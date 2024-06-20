import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  int? statusCode;
  String? message;
  bool? succeeded;
  Map? data;
  SignUpResponse({
    this.statusCode,
    this.message,
    this.succeeded,
    this.data,
  });
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
