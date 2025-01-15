import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart'; // JSON 관련 코드 생성 시 필요
part 'user.freezed.dart'; // 반드시 포함해야 함

@freezed
class User with _$User {
  factory User({
    required String id,
    required String password,
    required String email,
    required String nickname,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
