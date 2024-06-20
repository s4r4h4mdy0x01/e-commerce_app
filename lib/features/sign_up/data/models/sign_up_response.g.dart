// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      succeeded: json['succeeded'] as bool?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'succeeded': instance.succeeded,
      'data': instance.data,
    };
