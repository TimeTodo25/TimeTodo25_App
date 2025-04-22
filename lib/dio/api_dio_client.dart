import 'package:dio/dio.dart';

class ApiClient {
  static final Dio _dio = _createDio();

  static Dio _createDio() {
    return Dio()
      ..options = BaseOptions(
        baseUrl: 'https://api.timetodo.store/api',
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
        },
        validateStatus: (status) {
          return status! < 500;
        },
      );
  }
  // 여기에 인터셉터 추가
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      print('요청 URL: ${options.uri}');
      print('요청 데이터: ${options.data}');
      print('요청 헤더: ${options.headers}');
      return handler.next(options);
    },
    onResponse: (response, handler) {
      print('응답 상태 코드: ${response.statusCode}');
      print('응답 데이터: ${response.data}');
      print('응답 데이터 타입: ${response.data.runtimeType}');
      return handler.next(response);
    },
    onError: (error, handler) {
      print('에러 메시지: ${error.message}');
      print('에러 응답: ${error.response}');
      return handler.next(error);
    },
  ));

  return dio;
}

  static Dio get dio => _dio;
}