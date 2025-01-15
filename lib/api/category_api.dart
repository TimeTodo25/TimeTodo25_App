import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_todo/model/category/request/category_create_request.dart';
import 'package:time_todo/model/category/request/category_update_request.dart';
import 'package:time_todo/model/category/response/category_response.dart';
import 'package:time_todo/model/category/response/category_list_response.dart';

part 'category_api.g.dart';

@RestApi()
abstract class CategoryApi {
  factory CategoryApi(Dio dio, {String baseUrl}) = _CategoryApi;

  // 카테고리 조회 > 내 카테고리를 뭘로 조회할꺼임...?
  @GET('/v1/category/my/overlap')
  Future<CategoryListResponse> categoryList(@Query('user_idx') int idx);

  // 카테고리 추가 > 카테고리 어느 회원한테 추가할지 어케암..?
  // 카테고리 추가 성공하면 받는 부분 수정해야
  @POST('/v1/category/create')
  Future<CategoryResponse> categoryCreate(
      @Body() CategoryCreateRequest category);

  // 카테고리 수정
  @PUT('/v1/category/update')
  Future<CategoryResponse> categoryUpdate(
      @Body() CategoryUpdateRequest category);

  // 카테고리 삭제 > 아직 api 없음
  @DELETE('/v1/category/overlap/delete}')
  Future<bool> categoryDelete(@Query('idx') int idx);
}
