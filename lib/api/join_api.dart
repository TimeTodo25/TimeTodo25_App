import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_todo/model/user/user.dart';

part 'join_api.g.dart';

@RestApi()
abstract class JoinApi {
  factory JoinApi(Dio dio, {String baseUrl}) = _JoinApi;
  // 이메일 보내기
  @POST('/v1/mail/send/register')
  Future<bool> sendCertificationMail(@Body() String email);

  // 이메일, 코드 인증
  @PUT('/v1/mail/certification/register')
  Future<bool> certificationMailCode(@Body() String email, String code);

  // 아이디 중복 체크
  // api 없음
  @GET('/v1/user/overlap/id')
  Future<bool> idOverlapCheckApi(@Query('id') String id);

  // 닉네임 중복 체크
  // api 없음
  @GET('/v1/user/overlap/nickname')
  Future<bool> nicknameOverlapCheckApi(@Query('nickname') String nickname);

  // 회원가입
  @POST('/v1/user/register')
  Future<bool> joinUser(@Body() User user);
}
