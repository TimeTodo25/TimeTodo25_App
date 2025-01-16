import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_todo/model/d_day/request/d_day_create_request.dart';

part 'd_day_api.g.dart';

@RestApi()
abstract class DdayApi {
  factory DdayApi(Dio dio, {String baseUrl}) = _DdayApi;

  // 디데이 등록
  @POST('/v1/todo/register/d-day')
  Future<bool> dDayCreate(@Body() DdayCreateRequest dDay);
}
