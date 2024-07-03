import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class ProfileUserModel {
  final String? email;
  @JsonKey(name: 'username')
  String? userName;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? bio;
  String? imageUrl;
  String? createdAt;
  ProfileUserModel(
      {this.email,
      this.userName,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.bio,
      this.imageUrl,
      this.createdAt});
  factory ProfileUserModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserModelFromJson(json);
}
