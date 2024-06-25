import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  int? statusCode;
  String? message;
  bool? succeeded;
  @JsonKey(name: 'data')
  UserData? userData;

  LoginResponse({
    this.statusCode,
    this.message,
    this.succeeded,
    this.userData,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? message;
  bool? isAuthenticated;
  String? accessToken;

  String? accessTokenExpiresAt;
  String? refreshToken;

  String? refreshTokenExpiresAt;
  UserData({
    this.message,
    this.isAuthenticated,
    this.accessToken,
    this.accessTokenExpiresAt,
    this.refreshToken,
    this.refreshTokenExpiresAt,
  });
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  static DateTime? _dateTimeFromJson(String? json) =>
      json != null ? DateTime.tryParse(json) : null;
}
