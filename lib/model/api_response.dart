import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.g.dart'; // JSON 관련 코드 생성 시 필요
part 'api_response.freezed.dart'; // 반드시 포함해야 함

@freezed
class ApiResponse with _$ApiResponse {
  factory ApiResponse({
    final bool? success,
    final String? message,
    final dynamic data,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
  // {
  //   return ApiResponse(
  //     success: json['success'] ?? false,
  //     message: json['message'],
  //     data: json['data'],
  //   );
  // }
}
