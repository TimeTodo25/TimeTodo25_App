import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<Dio> authDio() async {
  final dio = Dio();
  final storage = new FlutterSecureStorage();

  dio.interceptors.clear();
  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    final accessToken = await storage.read(key: 'ACCESS_TOKEN');

    options.headers['Authorization'] = 'Bearer $accessToken';
    return handler.next(options);
  }, onError: (error, hander) async {
    // AccessToken 만료됬을 경우
    if (error.response?.statusCode == 401) {
      final accessToken = await storage.read(key: 'ACCESS_TOKEN');
      final refreshToken = await storage.read(key: 'REFRESH_TOKEN');

      // 토큰 갱신 요청을 담당할 dio
      var refreshDio = Dio();
      refreshDio.interceptors.clear();
      refreshDio.interceptors
          .add(InterceptorsWrapper(onError: (error, handler) async {
        // 다시 인증 오류 => refreshToken 만료
        if (error.response?.statusCode == 401) {
          //기기의 잦동 로그인 정보 삭제
          await storage.deleteAll();
        }
        return handler.next(error);
      }));
      // 토큰 갱신 api 요청 시 accessToken(만료), refreshToken 포함
      refreshDio.options.headers['Authorization'] = 'Bearer $accessToken';
      refreshDio.options.headers['Refresh'] = 'Bearer $refreshToken';

      // 토큰 갱신 api 요청 => 주소는 스웨거에 추가 되면 변경해줘야함
      final refreshResponse = await refreshDio.get('/token/refresh');

      // response로부터 갱신한 AccessToken 과 RefreshToken 파싱
      // ㄴ RefreshToken은 왜 재발급 받음..?
      final newAccessToken = refreshResponse.headers['Authorization']![0];
      final newRefreshToken = refreshResponse.headers['Refresh']![0];

      await storage.write(key: 'ACCESS_TOKEN', value: newAccessToken);
      await storage.write(key: 'REFRESH_TOKEN', value: newRefreshToken);

      error.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';

      final clonedRequest = await dio.request(error.requestOptions.path,
          options: Options(
              method: error.requestOptions.method,
              headers: error.requestOptions.headers),
          data: error.requestOptions.data,
          queryParameters: error.requestOptions.queryParameters);

      //api 복사본으로 재요청
      return hander.resolve(clonedRequest);
    }
    return hander.next(error);
  }));
  return dio;
}
