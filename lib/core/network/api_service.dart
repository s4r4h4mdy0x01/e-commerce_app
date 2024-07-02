import 'package:dio/dio.dart';
import 'package:e_commerce_app/features/access_token/access_token_requst.dart';
import 'package:e_commerce_app/features/access_token/access_token_response.dart';
import 'package:e_commerce_app/features/change_password/data/model/change_password_reqest.dart';
import 'package:e_commerce_app/features/change_password/data/model/change_password_response.dart';
import 'package:e_commerce_app/features/login/data/models/login_request_body.dart';
import 'package:e_commerce_app/features/login/data/models/login_response.dart';
import 'package:e_commerce_app/features/profile/data/models/user_model.dart';
import 'package:e_commerce_app/features/refresh_token/refresh_token_request.dart';
import 'package:e_commerce_app/features/refresh_token/refresh_token_response.dart';
import 'package:e_commerce_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:e_commerce_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:e_commerce_app/core/network/api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiContants.baseUsrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiContants.signIn)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  @POST(ApiContants.signUp)
  Future<SignUpResponse> signUp(
    @Body() SignUPRequestBody signUPRequestBody,
  );
  @POST(ApiContants.refreshToken)
  Future<RefreshTokenResponse> refreshToken(
    @Body() RefreshToken refreshTokenRequestBody,
  );
  //
  @POST(ApiContants.accessToken)
  Future<AccessTokenResponse> accessToken(
    @Body() AccessTokenRequest accessTokenRequest,
  );
  @POST(ApiContants.changePasworrd)
  Future<ChangePasswordResponse> changePasworrd(
    @Body() ChangePasswordRequestBody changePasswordRequestBody,
  );
  @GET(ApiContants.profile)
   Future<UserRosponse> getProfileUser(
   
  );
}
