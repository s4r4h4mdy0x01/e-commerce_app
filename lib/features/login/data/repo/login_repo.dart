import 'package:e_commerce_app/core/network/api_error_handler.dart';
import 'package:e_commerce_app/core/network/api_result.dart';
import 'package:e_commerce_app/core/network/api_service.dart';
import 'package:e_commerce_app/features/access_token/access_token_requst.dart';
import 'package:e_commerce_app/features/access_token/access_token_response.dart';
import 'package:e_commerce_app/features/login/data/models/login_request_body.dart';
import 'package:e_commerce_app/features/login/data/models/login_response.dart';
import 'package:e_commerce_app/features/refresh_token/refresh_token_request.dart';
import 'package:e_commerce_app/features/refresh_token/refresh_token_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }

  }
   Future<ApiResult<AccessTokenResponse>>accessTokenResponse(
      AccessTokenRequest accessTokenRequest) async {
    try {
      final response = await _apiService.accessToken(accessTokenRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
    Future<ApiResult<RefreshTokenResponse>> refreshToken(
      RefreshToken refreshTokenRequestBody) async {
    try {
      final response = await _apiService.refreshToken(refreshTokenRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
