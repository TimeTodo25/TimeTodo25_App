import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<Dio> authDio() async {
  final dio = Dio();
  final storage = FlutterSecureStorage();

  // API 서버의 기본 URL 설정
  dio.options.baseUrl = 'https://api.timetodo.store/api';

  // 모든 요청에 적용될 기본 헤더 설정
  // Content-Type: JSON 형식으로 데이터를 주고받음
  // Accept: 서버로부터 JSON 형식의 응답을 받겠다고 명시
  dio.options.headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
  // validateStatus 추가
  dio.options.validateStatus = (status) {
    return status! < 500; // 500 미만의 상태 코드는 에러로 처리하지 않음
  };

  // 네트워크 타임아웃 설정
  // connectTimeout: 서버 연결 시도 제한 시간
  // receiveTimeout: 서버로부터 응답 대기 제한 시간
  dio.options.connectTimeout = Duration(seconds: 5);
  dio.options.receiveTimeout = Duration(seconds: 3);

  // 기존 인터셉터 제거 후 새로운 인터셉터 추가
  dio.interceptors.clear();
  dio.interceptors.add(InterceptorsWrapper(
      // 요청 전에 실행되는 인터셉터
      onRequest: (options, handler) async {
    // 저장소에서 액세스 토큰을 가져와서 헤더에 추가
    final accessToken = await storage.read(key: 'ACCESS_TOKEN');
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    return handler.next(options);
  },

      // 에러 발생 시 실행되는 인터셉터
      onError: (error, handler) async {
    // 401 에러(인증 실패)가 발생한 경우 토큰 갱신 시도
    if (error.response?.statusCode == 401) {
      try {
        final accessToken = await storage.read(key: 'ACCESS_TOKEN');
        final refreshToken = await storage.read(key: 'REFRESH_TOKEN');

        // 토큰 갱신을 위한 새로운 Dio 인스턴스 생성
        var refreshDio = Dio();
        refreshDio.options.baseUrl = 'https://api.timetodo.store/api';
        refreshDio.options.headers = {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        };

        // 토큰 갱신용 Dio의 인터셉터 설정
        refreshDio.interceptors.clear();
        refreshDio.interceptors
            .add(InterceptorsWrapper(onError: (error, handler) async {
          // refreshToken마저 만료된 경우
          if (error.response?.statusCode == 401) {
            // 모든 로그인 정보 삭제
            await storage.deleteAll();
          }
          return handler.next(error);
        }));

        // 토큰 갱신 요청에 필요한 헤더 설정
        refreshDio.options.headers['Authorization'] = 'Bearer $accessToken';
        refreshDio.options.headers['Refresh'] = 'Bearer $refreshToken';

        // 토큰 갱신 API 호출
        final refreshResponse = await refreshDio.get('/token/refresh');

        // 새로운 토큰 추출 및 저장
        final newAccessToken = refreshResponse.headers['Authorization']![0];
        final newRefreshToken = refreshResponse.headers['Refresh']![0];

        await storage.write(key: 'ACCESS_TOKEN', value: newAccessToken);
        await storage.write(key: 'REFRESH_TOKEN', value: newRefreshToken);

        // 실패했던 원래 요청의 헤더를 새 토큰으로 업데이트
        error.requestOptions.headers['Authorization'] =
            'Bearer $newAccessToken';

        // 원래 요청 재시도
        final clonedRequest = await dio.request(error.requestOptions.path,
            options: Options(
                method: error.requestOptions.method,
                headers: error.requestOptions.headers),
            data: error.requestOptions.data,
            queryParameters: error.requestOptions.queryParameters);

        return handler.resolve(clonedRequest);
      } catch (e) {
        // 토큰 갱신 과정에서 에러 발생 시
        // 모든 인증 정보를 삭제하고 에러를 그대로 전달
        await storage.deleteAll();
        return handler.next(error);
      }
    }
    return handler.next(error);
  }));

  return dio;
}
