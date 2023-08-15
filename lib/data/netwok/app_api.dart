import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


import '../response/login_response/login_response.dart';
import 'api_url.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: ApiUrls.BASE_URL)
abstract class AppServicesClient{
  factory AppServicesClient(Dio dio,{String baseUrl})= _AppServicesClient;
  @POST(ApiUrls.LOGIN)
  Future<LoginResponse> login(
      @Field("email") String email,
      @Field("password") String password,
      );
}