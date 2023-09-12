import 'package:dio/dio.dart';
import 'package:haraj_app/app/test_register/data/sp_helper.dart';
import 'package:haraj_app/app/test_register/model/login_model.dart';
import 'package:haraj_app/app/test_register/model/logoutModel.dart';
import 'package:haraj_app/app/test_register/model/profile_model.dart';
import 'package:haraj_app/app/test_register/model/register_model.dart';
import 'package:haraj_app/data/remote/api_url.dart';

import '../model/verify_model.dart';

class DioHelper {
  DioHelper._();

  static DioHelper dioHelper = DioHelper._();
  Dio dio = Dio();

///////////////////////////////////Register//////////////////////////////////////
  Register(
      {required String email,
      required String password,
      required String type}) async {
    var url = Uri.parse(ApiUrls.BASE_URL + ApiUrls.REGISTER);
    Map<String, dynamic> mapData = {
      'email': email,
      'password': password,
      'type': type,
    };
    Map<String, dynamic> mapHeaders = {
      'lang': 'en',
      'Content-Type': 'application/json',
      "Accept": "application/json",
    };

    Response response = await dio.post(
      url.toString(),
      data: mapData,
      options: Options(
        headers: mapHeaders,
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );
    RegisterModel registerModel = RegisterModel.fromJson(response.data);
    print(response.data);
    print('status');
    print(registerModel.status);
    return registerModel.data!.id;
  }

  ////////////////////////////////Login/////////////////////////////////

  login(String email, String password, String deviceName) async {
    var url = Uri.parse(ApiUrls.BASE_URL + ApiUrls.LOGIN);
    Map<String, dynamic> mapData = {
      'email': email,
      'password': password,
      'device_name': deviceName,
    };
    Map<String, dynamic> mapHeaders = {
      'lang': 'en',
      'Content-Type': 'application/json',
    };

    Response response = await dio.post(url.toString(),
        data: mapData, options: Options(headers: mapHeaders));
    LoginModel loginModel = LoginModel.fromJson(response.data);
    print(response.data);
    print("status login is ${loginModel.status}");
    return loginModel.data!;

  }

  //////////////////////verify/////////////////////////////

  verify(String code, String deviceName, String id) async {
    var url = Uri.parse(ApiUrls.BASE_URL + ApiUrls.VERIFY + '$id');
    Map<String, dynamic> mapData = {
      'code': code,
      'device_name': deviceName,
    };
    Map<String, dynamic> mapHeaders = {
      'lang': 'en',
      'Content-Type': 'application/json',
    };

    Response response = await dio.post(
      url.toString(),
      data: mapData,
      options: Options(
        headers: mapHeaders,
      ),
    );
    VerifyModel verifyModel = VerifyModel.fromJson(response.data);
    print(response.data);
    print("status verify is ${verifyModel.status}");
    // SpHelper.spHelper.SaveToken(loginModel.data!.token!);
    return verifyModel.data!;
  }

  ///////////////////////////////Logout/////////////////////////

  Logout() async {
    var url = Uri.parse(ApiUrls.BASE_URL + ApiUrls.LOGOUT);
    String? token = await SpHelper.spHelper.getToken();
    print(token);
    Map<String, dynamic> mapHeaders = {
      'lang': 'en',
      'Content-Type': 'application/json',
      'Authorization': "Bearer ${SpHelper.spHelper.getToken()}"
      //'Authorization': "Bearer 60|EczRQ1ycvZFZ3Z8iayAzFF73dH23Q0cemOCTPE3J"
    };
    Response response =
        await dio.post(url.toString(), options: Options(headers: mapHeaders));
    LogoutModel logoutModel = LogoutModel.fromJson(response.data);
    print(response.data);
    print('token ${SpHelper.spHelper.getToken()}');
    print("status logout is ${logoutModel.status}");

    return logoutModel;
  }

  ////////////////////////////////Profile////////////////////////////////////
  profile() async {
    var url = Uri.parse(ApiUrls.BASE_URL + ApiUrls.PROFILE);
    String? token = await SpHelper.spHelper.getToken();
    print(token);
    Map<String, dynamic> mapHeaders = {
      'lang': 'en',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer ${SpHelper.spHelper.getToken()}"

    };
    print(token);
    // print('token ${SpHelper.spHelper.getToken()}');
    Response response =
        await dio.get(url.toString(), options: Options(headers: mapHeaders));
    ProfileModel profileModel = ProfileModel.fromJson(response.data);
    print("response");
    print(response.data);
    // print('token ${SpHelper.spHelper.getToken()}');
    print("status profile is ${profileModel.status}");
    return profileModel;
  }
}
