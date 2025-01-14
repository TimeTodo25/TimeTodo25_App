import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_todo/entity/todo/todo_tbl.dart';
import 'package:time_todo/model/todo/request/todo_create_request.dart';
import 'package:time_todo/model/todo/request/todo_timer_request.dart';
import 'package:time_todo/model/todo/request/todo_update_request.dart';

part 'todo_api.g.dart';

@RestApi()
abstract class TodoApi {
  factory TodoApi(Dio dio, {String baseUrl}) = _TodoApi;

  // 투두 타이머 등록
  @POST('/v1/todo/regist/todo/timer')
  Future<bool> todoTimer(@Body() TodoTimerRequest timeDatas);
  // [ 투두 타이머 등록 ] 블럭에서 쓸때 참고
//   final request = TodoTimerRequest(
//   idx: 1,
//   timeDatas: [
//     TodoTimerData(
//       startDt: startTime,
//       endDt: endTime,
//     )
//   ]
// );
// final result = await todoApi.todoTimer(request);

  // 투두 등록
  @POST('/v1/todo/create')
  Future<bool> todoCreate(@Body() TodoCreateRequest todo);

  // 투두 수정
  @PUT('/v1/todo/update')
  Future<bool> todoUpdate(@Body() TodoUpdateRequest todo);

  // 투두 상세
  @GET('/v1/todo/detail/overlap')
  Future<Todo> todoDetail(@Query('idx') int idx);

  // 투두 삭제
  @DELETE('/v1/todo/overlap/delete}')
  Future<bool> todoDelete(@Query('idx') int idx);
}
