import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/auth_cubit/data/dio_helper.dart';
import 'package:string_validator/string_validator.dart';
import '../../../../shared/style/color_manager.dart';
import '../../../model/auth_model/login_model.dart';
import '../../../model/auth_model/profile_model.dart';
import '../../data/sp_helper.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());

 static AuthCubit get(context)=>BlocProvider.of(context);

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
  late ProfileModel profileModel;
  profile() async {
    emit(LoadingAuthState());
    try {
      print('cubit start');
      profileModel = await DioHelper.dioHelper.profile();
      print(profileModel.data!.email);
      print('cubit end');
      emit(SucessAuthState());
    } on Exception catch (e) {
      emit(FailureAuthState());
    }
  }

  ///////////////////////////////Email Validation///////////////////////////////
  emailValidation(String value) {
    if (value == null || value.isEmpty) {
      return 'هذا الحقل مطلوب';
    } else if (!isEmail(value)) {
      return "صيغة الايميل خاطئة";
    } else {
      return null;
    }
  }
  var confirmPass;
  passwordValidation(String value) {
    confirmPass = value;
    if (value == null || value.isEmpty) {
      return 'هذا الحقل مطلوب';
    } else if (value.length < 8) {
      return "كلمة المرور الصحيحة لا تقل عن 8 حروف";
    } else {
      return null;
    }
  } ConFirmPasswordValidation(String value) {

    if (value == null || value.isEmpty) {
      return "Please Re-Enter New Password";
    } else if (value.length < 8) {
      return "Password must be atleast 8 characters long";
    } else if (value != confirmPass) {
      return "Password must be same as above";
    } else {
      return null;
    }
  }


}
