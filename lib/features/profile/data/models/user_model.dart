import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class User {
  int? statusCode;
  String? message;
  bool? succeeded;
  @JsonKey(name: 'data')
  UserData? userData;
  User({
    this.statusCode,
    this.message,
    this.succeeded,
    this.userData
  });
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

@JsonSerializable()
class UserData {
  String? email;
  @JsonKey(name: 'username')
  String? userName;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? bio;
  String? imageUrl;
  String? createdAt;
  UserData(
      {this.email,
      this.userName,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.bio,
      this.imageUrl,
      this.createdAt});
      factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
