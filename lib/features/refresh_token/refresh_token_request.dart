import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'refresh_token_request.g.dart';

@JsonSerializable()
class RefreshToken {
  @JsonKey(name: 'RefreshToken')
  final String refreshToken;
  RefreshToken({required this.refreshToken});
  Map<String, dynamic> toJson() => _$RefreshTokenToJson(this);
}
