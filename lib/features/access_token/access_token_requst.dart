
import 'package:json_annotation/json_annotation.dart';
part 'access_token_requst.g.dart';
@JsonSerializable()
class AccessTokenRequest {
  @JsonKey(name: 'RefreshToken')
  final String refreshToken;
   AccessTokenRequest({required this.refreshToken});
  Map<String, dynamic> toJson() => _$AccessTokenRequestToJson(this);
}
