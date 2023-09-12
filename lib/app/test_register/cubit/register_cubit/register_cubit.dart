import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/test_register/cubit/register_cubit/register_state.dart';
import 'package:haraj_app/app/test_register/data/dio_helper.dart';
import 'package:haraj_app/app/test_register/data/sp_helper.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(InitialRegisterState());
  GlobalKey<FormState> registerKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmePassController = TextEditingController();
  String value = '1';
   register() async {
    emit(LoadingRegisterState());
    try {
      String id=await DioHelper.dioHelper.Register(
          email: emailController.text, password: passwordController.text,type: value);
      await SpHelper.spHelper.SaveId(id);
      print(passwordController.text);
      print(emailController.text);
      print("id user in register : $id");
      emit(SucessRegisterState());
    } on Exception catch (e) {
      emit(FailureRegisterState());
    }
  }
}
