import 'package:haraj_app/model/user_model.dart';

class LoginModel{
  LoginDataModel? data;

  LoginModel(this.data);
}
class LoginDataModel{
  String token;
  UserModel? user;

  LoginDataModel(this.token, this.user);
}