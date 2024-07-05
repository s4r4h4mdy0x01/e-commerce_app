// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUserModel _$ProfileUserModelFromJson(Map<String, dynamic> json) =>
    ProfileUserModel(
      email: json['data']['email'] as String?,
      userName: json['data']['username'] as String?,
      firstName: json['data']['firstName'] as String?,
      lastName: json['data']['lastName'] as String?,
      phoneNumber: json['data']['phoneNumber'] as String?,
      bio: json['data']['bio'] as String?,
      imageUrl: json['data']['imageUrl'] as String?,
      createdAt: json['data']['createdAt'] as String?,
    );

Map<String, dynamic> _$ProfileUserModelToJson(ProfileUserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'bio': instance.bio,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt,
    };
