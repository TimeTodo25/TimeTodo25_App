import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_todo/model/routine/request/routine_create_request.dart';
import 'package:time_todo/model/routine/request/routine_update_request.dart';
import 'package:time_todo/model/routine/response/routine_create_response.dart';
import 'package:time_todo/model/todo/response/todo_detail_response.dart';

part 'routine_api.g.dart';

@RestApi()
abstract class RoutineApi {
  factory RoutineApi(Dio dio, {String baseUrl}) = _RoutineApi;

  // 루틴 등록
  @POST('/v1/todo/routine/register')
  Future<RoutineCreateResponse> routineCreate(
      @Body() RoutineCreateRequest routineDatas);

  // 루틴 수정
  @PUT('/v1/todo/routine/update')
  Future<bool> routineUpdate(@Body() RoutineUpdateRequest routine);

  // 루틴 상세 [ 아직 api 없음 ]
  @GET('/v1/todo/routine/detail/overlap')
  Future<TodoDetailResponse> routineDetail(@Query('idx') int idx);

  // 루틴 삭제
  @DELETE('/v1/todo/routine/overlap/delete}')
  Future<bool> routineDelete(@Query('idx') int idx);
}
