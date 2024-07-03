// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUserModel _$ProfileUserModelFromJson(Map<String, dynamic> json) =>
    ProfileUserModel(
      email: json['email'] as String?,
      userName: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      bio: json['bio'] as String?,
      imageUrl: json['imageUrl'] as String?,
      createdAt: json['createdAt'] as String?,
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
