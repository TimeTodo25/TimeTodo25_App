import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_todo/model/todo/request/todo_create_request.dart';
import 'package:time_todo/model/todo/request/todo_progress_update_request.dart';
import 'package:time_todo/model/todo/request/todo_timer_request.dart';
import 'package:time_todo/model/todo/request/todo_update_request.dart';
import 'package:time_todo/model/todo/response/todo_create_response.dart';
import 'package:time_todo/model/todo/response/todo_detail_response.dart';
import 'package:time_todo/model/todo/response/todo_progress_update_response.dart';
import 'package:time_todo/model/todo/response/todo_update_response.dart';

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
  Future<TodoCreateResponse> todoCreate(@Body() TodoCreateRequest todo);

  // 투두 수정
  @PUT('/v1/todo/update')
  Future<TodoUpdateResponse> todoUpdate(@Body() TodoUpdateRequest todo);

  // 투두 데이터 단건 조회
  @GET('/v1/todo/detail/{idx}')
  Future<TodoDetailResponse> todoDetail(@Query('idx') int idx);

  // 투두 삭제
  @DELETE('/v1/todo/{idx}/delete')
  Future<void> todoDelete(@Path('idx') int idx);

  // 투두 진행도 업데이트 (0 / 50 / 100)
  @PUT('/v1/todo/update/progress')
  Future<TodoProgressUpdateResponse> todoProgressUpdate(@Body() TodoProgressUpdateRequest todo);
}
