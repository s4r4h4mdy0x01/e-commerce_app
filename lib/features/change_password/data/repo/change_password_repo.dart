import 'package:e_commerce_app/core/network/api_result.dart';
import 'package:e_commerce_app/features/change_password/data/model/change_password_reqest.dart';
import 'package:e_commerce_app/features/change_password/data/model/change_password_response.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_service.dart';

class ChangePasswordRepo {
  final ApiService _apiService;

  ChangePasswordRepo(this._apiService);
  Future<ApiResult<ChangePasswordResponse>> signUp(
      ChangePasswordRequestBody changePasswordRequestBody) async {
    try {
      final response =
          await _apiService.changePasworrd(changePasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
