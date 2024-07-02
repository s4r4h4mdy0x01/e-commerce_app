import 'package:e_commerce_app/core/network/api_result.dart';
import 'package:e_commerce_app/core/network/api_service.dart';
import 'package:e_commerce_app/features/profile/data/models/user_model.dart';

import '../../../../core/network/api_error_handler.dart';

class ProfileUserRepo {
  final ApiService _apiService;

  ProfileUserRepo(this._apiService);
  Future<ApiResult<UserRosponse>> getProfileUser() async {
    try {
      final response = await _apiService.getProfileUser();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
