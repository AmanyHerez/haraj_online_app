import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/test_register/data/dio_helper.dart';
import 'package:haraj_app/app/test_register/model/login_model.dart';
import '../../../../modules/auth/login/view_model/login_cubit/login_state.dart';
import '../../../../shared/style/color_manager.dart';
import '../../data/sp_helper.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitialLoginState());
  GlobalKey<FormState> loginKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String deviceName = '';

  Future<void> login() async {
    emit(LoadingLoginState());
    try {
      String? deviceName = await SpHelper.spHelper.getDeviceName();
      Data loginModel =
      await DioHelper.dioHelper
          .login(emailController.text, passwordController.text, deviceName!);

       await SpHelper.spHelper.SaveToken(loginModel.token!);
       print('token after login:  ${loginModel.token}');

      print('after Name Device ${deviceName}');
      emit(SucessLoginState());
    } on Exception catch (e) {
      emit(FailureLoginState());
    }
  }
  Color bgColor(){
    if(emailController.text.isNotEmpty &&passwordController.text.isNotEmpty){

      return AppColor.primary;

    }
    else{

      return AppColor.bg_button;
    }
  }
}
