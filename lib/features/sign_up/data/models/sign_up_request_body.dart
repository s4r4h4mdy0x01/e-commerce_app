import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';
@JsonSerializable()
class SignUPRequestBody {
  @JsonKey(name: 'Email')
  final String email;
    @JsonKey(name: 'Password')
  final String password;
    @JsonKey(name: 'ConfirmPassword')
  final String confirmPassword;

  SignUPRequestBody({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
  Map<String, dynamic> toJson() => _$SignUPRequestBodyToJson(this);
}
