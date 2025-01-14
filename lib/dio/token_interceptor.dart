import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();

class AuthInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await storage.read(key: 'ACCESS_TOKEN');
    options.headers['Authorization'] = 'Bearer $accessToken';
    return handler.next(options);
  }

}