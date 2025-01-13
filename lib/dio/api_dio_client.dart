import 'package:dio/dio.dart';

Dio apiDioClient() {
  final dio = Dio()
    ..options = BaseOptions(baseUrl: 'https://timetodo.store/api');
  return dio;
}
