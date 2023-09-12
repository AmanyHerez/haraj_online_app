import 'package:haraj_app/app/constants.dart';
import 'package:haraj_app/app/extenstion.dart';
import 'package:haraj_app/data/response/login_response/login_response.dart';
import 'package:haraj_app/model/login_model.dart';
import 'package:haraj_app/data/mapper/user_mapper.dart';

extension LoginDataResponseMapper on LoginDataResponse? {
  LoginDataModel toDomain() {
    return LoginDataModel(
      this?.token.orEmpty() ?? Constants.empty,
      this?.user.toDomain(),
    );
  }
}

extension LoginResponseMapper on LoginResponse? {
  LoginModel toDomain() {
    return LoginModel(
      this?.data.toDomain(),
    );
  }
}
