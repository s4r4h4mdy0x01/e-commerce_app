import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:e_commerce_app/core/network/api_constants.dart';
part 'api_service.g.dart';
@RestApi(baseUrl: ApiContants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  
}
