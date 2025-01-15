import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_todo/model/routine/request/routine_create_request.dart';
import 'package:time_todo/model/routine/request/routine_update_request.dart';
import 'package:time_todo/model/todo/response/todo_detail_response.dart';

part 'routine_api.g.dart';

@RestApi()
abstract class RoutineApi {
  factory RoutineApi(Dio dio, {String baseUrl}) = _RoutineApi;

  // 루틴 등록
  @POST('/v1/todo/routine/register')
  Future<bool> routineCreate(@Body() RoutineCreateRequest routineDatas);
//   {
//   "idx": 1,
//   "cycleType": "EVERY_WEEK",
//   "cycleValue": [
//     0
//   ],
//   "startDt": "2024-11-01",
//   "endDt": "2024-11-15"
// }

  // 루틴 수정
  @PUT('/v1/todo/routine/update')
  Future<bool> routineUpdate(@Body() RoutineUpdateRequest routine);
//   {
//   "idx": 1,
//   "cycleType": "EVERY_WEEK",
//   "cycleValue": [
//     0
//   ],
//   "startDt": "2024-11-01",
//   "endDt": "2024-11-15",
//   "startTm": "11:00:00",
//   "endTm": "11:00:00"
// }

  // 루틴 상세 [ 아직 api 없음 ]
  @GET('/v1/todo/routine/detail/overlap')
  Future<TodoDetailResponse> routineDetail(@Query('idx') int idx);

  // 루틴 삭제
  @DELETE('/v1/todo/routine/overlap/delete}')
  Future<bool> routineDelete(@Query('idx') int idx);
}
