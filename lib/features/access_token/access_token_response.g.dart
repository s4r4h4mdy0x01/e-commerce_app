// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenResponse _$AccessTokenResponseFromJson(Map<String, dynamic> json) =>
    AccessTokenResponse(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
      succeeded: json['succeeded'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccessTokenResponseToJson(
        AccessTokenResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'succeeded': instance.succeeded,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      accessToken: json['accessToken'] as String,
      accessTokenExpiresAt: json['accessTokenExpiresAt'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt,
    };
