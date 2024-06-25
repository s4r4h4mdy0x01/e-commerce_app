// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_requst.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenRequest _$AccessTokenRequestFromJson(Map<String, dynamic> json) =>
    AccessTokenRequest(
      refreshToken: json['RefreshToken'] as String,
    );

Map<String, dynamic> _$AccessTokenRequestToJson(AccessTokenRequest instance) =>
    <String, dynamic>{
      'RefreshToken': instance.refreshToken,
    };
