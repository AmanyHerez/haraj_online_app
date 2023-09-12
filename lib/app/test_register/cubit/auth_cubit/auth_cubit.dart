import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/test_register/cubit/auth_cubit/auth_state.dart';
import 'package:haraj_app/app/test_register/data/dio_helper.dart';
import 'package:haraj_app/app/test_register/model/profile_model.dart';

import '../../../../shared/style/color_manager.dart';
import '../../data/sp_helper.dart';
import '../../model/login_model.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());

  /////////////////////////Login//////////////////////////////
  GlobalKey<FormState> loginKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String deviceName = '';

  Future<void> login() async {
    emit(LoadingAuthState());
    try {
      String? deviceName = await SpHelper.spHelper.getDeviceName();
      Data loginModel = await DioHelper.dioHelper
          .login(emailController.text, passwordController.text, deviceName!);

      await SpHelper.spHelper.SaveToken(loginModel.token!);
      print('token after login:  ${loginModel.token}');

      print('after Name Device ${deviceName}');
      emit(SucessAuthState());
    } on Exception catch (e) {
      emit(FailureAuthState());
    }
  }

  Color bgColor() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      return AppColor.primary;
    } else {
      return AppColor.bg_button;
    }
  }

  //////////////////////////////////////Register/////////////////////////////////
  GlobalKey<FormState> registerKey = GlobalKey();
  TextEditingController emailRegController = TextEditingController();
  TextEditingController passwordRegController = TextEditingController();
  TextEditingController confirmePassController = TextEditingController();
  String value = '1';

  Future<void> register() async {
    emit(LoadingAuthState());
    try {
      String id = await DioHelper.dioHelper.Register(
          email: emailRegController.text,
          password: passwordRegController.text,
          type: value);
      await SpHelper.spHelper.SaveId(id);
      print(emailRegController.text);
      print(passwordRegController.text);
      print("id user in register : $id");
      emit(SucessAuthState());
    } on Exception catch (e) {
      emit(FailureAuthState());
    }
  }

  //////////////////////////////////Verify///////////////////////////////
  Future<void> verify() async {
    emit(LoadingAuthState());
    try {
      String? deviceName = await SpHelper.spHelper.getDeviceName();
      String? id = await SpHelper.spHelper.getId();
      print("id user in verify : $id");
      DioHelper.dioHelper.verify('0000', deviceName!, id!);
      print("id user after verify : $id");
      emit(SucessAuthState());
    } on Exception catch (e) {
      emit(FailureAuthState());
    }
  }

  ///////////////////////////////Logout////////////////////////////////
  logout() async {
    emit(LoadingAuthState());
    try {
      print('start logout');
      await DioHelper.dioHelper.Logout();
      print('finish logout');
      emit(SucessAuthState());
    } on Exception catch (e) {
      emit(FailureAuthState());
    }
  }
  //////////////////////////////Profile////////////////////////////////
  profile() async {
    emit(LoadingAuthState());
    try {
      print('cubit start');
      ProfileModel data=await DioHelper.dioHelper.profile();
      print(data.data!.email);
      print('cubit end');
      emit(SucessAuthState());
    } on Exception catch (e) {
      emit(FailureAuthState());
    }
  }
  ////////////////////////////////////////////////////////////////////
}
