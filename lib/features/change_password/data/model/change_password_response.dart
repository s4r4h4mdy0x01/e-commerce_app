import 'package:json_annotation/json_annotation.dart';
part 'change_password_response.g.dart';

@JsonSerializable()
class ChangePasswordResponse {
  int? statusCode;
  String? message;
  bool? succeeded;
  Map? data;
  ChangePasswordResponse({
    this.statusCode,
    this.message,
    this.succeeded,
    this.data,
  });
  factory ChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseFromJson(json);
}
