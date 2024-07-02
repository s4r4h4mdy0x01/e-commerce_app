import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserRosponse {
  int? statusCode;
  String? message;
  bool? succeeded;
  @JsonKey(name: 'data')
  UserData? userData;
 UserRosponse({
    this.statusCode,
    this.message,
    this.succeeded,
    this.userData
  });
  factory UserRosponse.fromJson(Map<String, dynamic> json) =>
      _$UserRosponseFromJson(json);
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
