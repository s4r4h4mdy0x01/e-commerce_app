
import 'package:json_annotation/json_annotation.dart';
part 'change_password_reqest.g.dart';
@JsonSerializable()
class ChangePasswordRequestBody {

   @JsonKey(name: 'CurrentPassword')
  final String currentPassword;
    @JsonKey(name: 'NewPassword')
  final String newPassword;
    @JsonKey(name: 'ConfirmNewPassword')
  final String confirmNewPassword;

   ChangePasswordRequestBody({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmNewPassword,
  });
  Map<String, dynamic> toJson() => _$ChangePasswordRequestBodyToJson(this);
}