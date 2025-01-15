import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_todo/model/home/response/home_list_response.dart';

part 'home_api.g.dart';

@RestApi()
abstract class HomeApi {
  factory HomeApi(Dio dio, {String baseUrl}) = _HomeApi;

  // [ 홈 ] 카테고리에 따른 투두 리스트
  @GET('/v1/todo/home')
  Future<HomeListResponse> getHomeList();
}
