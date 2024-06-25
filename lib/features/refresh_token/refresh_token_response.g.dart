// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenResponse _$RefreshTokenResponseFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenResponse(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
      succeeded: json['succeeded'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RefreshTokenResponseToJson(
        RefreshTokenResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'succeeded': instance.succeeded,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      refreshToken: json['refreshToken'] as String,
      refreshTokenExpiresAt: json['refreshTokenExpiresAt'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiresAt': instance.refreshTokenExpiresAt,
    };
