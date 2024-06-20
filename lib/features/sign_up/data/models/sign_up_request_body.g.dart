// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUPRequestBody _$SignUPRequestBodyFromJson(Map<String, dynamic> json) =>
    SignUPRequestBody(
      email: json['Email'] as String,
      password: json['Password'] as String,
      confirmPassword: json['ConfirmPassword'] as String,
    );

Map<String, dynamic> _$SignUPRequestBodyToJson(SignUPRequestBody instance) =>
    <String, dynamic>{
      'Email': instance.email,
      'Password': instance.password,
      'ConfirmPassword': instance.confirmPassword,
    };
