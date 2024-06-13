// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String,
      isAuthenticated: json['isAuthenticated'] as bool,
      accessToken: json['accessToken'] as String,
      accessTokenValidTo: json['accessTokenValidTo'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isAuthenticated': instance.isAuthenticated,
      'accessToken': instance.accessToken,
      'accessTokenValidTo': instance.accessTokenValidTo,
    };
