import 'package:e_commerce_app/core/network/api_error_handler.dart';
import 'package:e_commerce_app/core/network/api_result.dart';
import 'package:e_commerce_app/core/network/api_service.dart';
import 'package:e_commerce_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:e_commerce_app/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponse>> signUp(
      SignUPRequestBody signUPRequestBody) async {
    try {
      final response = await _apiService.signUp(signUPRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
