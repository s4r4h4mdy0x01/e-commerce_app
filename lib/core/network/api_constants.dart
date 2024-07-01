class ApiContants {
  static const String baseUsrl = 'https://e-commerce-api.runasp.net/Api/V1';
  static const String signUp = '/User/Authentication/SignUp';
  static const String signIn = '/User/Authentication/SignIn';
  static const String refreshToken = '/User/Authentication/RefreshToken';
  static const String accessToken = '/User/Authentication/AccessToken';
  static const String changePasworrd = '/User/Authentication/ChangePassword';
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
