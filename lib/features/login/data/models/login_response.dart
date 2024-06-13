import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  final String message;
  final bool isAuthenticated;
  final String accessToken;
  final String accessTokenValidTo;

  LoginResponse(
      {required this.message,
      required this.isAuthenticated,
      required this.accessToken,
      required this.accessTokenValidTo});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
