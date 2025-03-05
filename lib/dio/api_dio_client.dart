import 'package:dio/dio.dart';

Dio apiDioClient() {
  final dio = Dio()
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

  return dio;
}

    // ..options = BaseOptions(baseUrl: 'https://timetodo.store/api');
