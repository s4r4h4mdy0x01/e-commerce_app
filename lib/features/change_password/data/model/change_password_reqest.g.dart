// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_reqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRequestBody _$ChangePasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordRequestBody(
      currentPassword: json['CurrentPassword'] as String,
      newPassword: json['NewPassword'] as String,
      confirmNewPassword: json['ConfirmNewPassword'] as String,
    );

Map<String, dynamic> _$ChangePasswordRequestBodyToJson(
        ChangePasswordRequestBody instance) =>
    <String, dynamic>{
      'CurrentPassword': instance.currentPassword,
      'NewPassword': instance.newPassword,
      'ConfirmNewPassword': instance.confirmNewPassword,
    };
