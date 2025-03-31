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

  static Dio get dio => _dio;
}