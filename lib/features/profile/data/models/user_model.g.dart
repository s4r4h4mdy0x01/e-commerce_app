// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRosponse _$UserRosponseFromJson(Map<String, dynamic> json) => UserRosponse(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      succeeded: json['succeeded'] as bool?,
      userData: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRosponseToJson(UserRosponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'succeeded': instance.succeeded,
      'data': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      email: json['email'] as String?,
      userName: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      bio: json['bio'] as String?,
      imageUrl: json['imageUrl'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'email': instance.email,
      'username': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'bio': instance.bio,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt,
    };
