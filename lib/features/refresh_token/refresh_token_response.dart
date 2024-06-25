import 'package:json_annotation/json_annotation.dart';
part 'refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse {
 final int statusCode;
 final String message;
 final bool succeeded;
 final Data data;
  RefreshTokenResponse(
      {required this.message, required this.statusCode, required this.succeeded, required this.data});
  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);
}

@JsonSerializable()
class Data {
  final String refreshToken;
 final String refreshTokenExpiresAt;
  Data({required this.refreshToken, required this.refreshTokenExpiresAt});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
