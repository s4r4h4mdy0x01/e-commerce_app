import 'package:json_annotation/json_annotation.dart';
part 'access_token_response.g.dart';
@JsonSerializable()
class AccessTokenResponse {
 final int statusCode;
 final  String message;
final  bool succeeded;
final  Data data;
 AccessTokenResponse(
      {  required this.message, required this.statusCode, required this.succeeded, required this.data});
  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenResponseFromJson(json);
}

@JsonSerializable()
class Data {
 final String accessToken;
  final String accessTokenExpiresAt;
  Data({required this.accessToken, required this.accessTokenExpiresAt});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
