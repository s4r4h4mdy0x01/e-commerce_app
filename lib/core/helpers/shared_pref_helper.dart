
import 'package:e_commerce_app/features/access_token/access_token_requst.dart';
import 'package:e_commerce_app/features/login/data/models/login_response.dart';
import 'package:e_commerce_app/features/login/data/repo/login_repo.dart';
import 'package:e_commerce_app/features/refresh_token/refresh_token_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  final LoginRepo _loginRepo;

  SharedPrefHelper(this._loginRepo);

  
  Future<void> saveTokens(LoginResponse loginResponse) async {
    await setSecuredString(
       SharedPrefKeys.accessToken, loginResponse.userData!.accessToken ?? '');
    await setSecuredString(SharedPrefKeys.accessTokenExpire,
        loginResponse.userData!.accessTokenExpiresAt ?? '');
    await setSecuredString(
        SharedPrefKeys.refreshToken, loginResponse.userData!.refreshToken ?? '');
    await setSecuredString(SharedPrefKeys.refreshTokenExpire,
        loginResponse.userData!.refreshTokenExpiresAt ?? '');
  }

  Future<void> refreshAccessToken() async {
    final refreshToken = getSecuredString(SharedPrefKeys.refreshToken);
    final response = await _loginRepo.accessTokenResponse(
        AccessTokenRequest(refreshToken: refreshToken ?? ''));
    response.when(success: (accessResponse) async {
      final accessResponsen = LoginResponse(
          userData: UserData(
        accessToken: accessResponse.data.accessToken,
        accessTokenExpiresAt: accessResponse.data.accessTokenExpiresAt,
      ));
      await saveTokens(accessResponsen);
    }, failure: (error) {
      Exception('Refresh token failed');
    });
  }

  Future<void> refreshRefreshToken() async {
    final refreshToken = getSecuredString(SharedPrefKeys.refreshToken);
    final response = await _loginRepo
        .refreshToken(RefreshToken(refreshToken: refreshToken ?? ''));
    response.when(success: (refreshResponse) async {
      final refreshResponsen = LoginResponse(
          userData: UserData(
        accessToken: refreshResponse.data.refreshToken,
        accessTokenExpiresAt: refreshResponse.data.refreshTokenExpiresAt,
      ));
      await saveTokens(refreshResponsen);
    }, failure: (error) {
      Exception('Refresh token failed');
    });
  }

 

  Future<void> checkAndRefreshToken() async {
    String? expiresAt = await getSecuredString(SharedPrefKeys.accessTokenExpire);
    
    if (expiresAt != null) {
      var isExpired = DateTime.now().isAfter(DateTime.parse(expiresAt));
      if (isExpired) {
        await refreshAccessToken();
      }
    }
  }

  bool isSignedIn() {
    final accessToken = getSecuredString(SharedPrefKeys.accessToken);
    return accessToken != null;
  }

  /// Saves a [value] with a [key] in the FlutterSecureStorage.
  static setSecuredString(String key, String value) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint(
        "FlutterSecureStorage : setSecuredString with key : $key and value : $value");
    await flutterSecureStorage.write(key: key, value: value);
  }

  /// Gets an String value from FlutterSecureStorage with given [key].
  static getSecuredString(String key) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('FlutterSecureStorage : getSecuredString with key :');
    return await flutterSecureStorage.read(key: key) ?? '';
  }
}

class SharedPrefKeys{
  static const String accessToken = 'accessToken';
  static const String accessTokenExpire = 'accessTokenExpiresAt';
  static const String refreshToken = 'refreshToken';
  static const String refreshTokenExpire =
      'refreshTokenExpiresAt'; // Key for storing expiry time

}