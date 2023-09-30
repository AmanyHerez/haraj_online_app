import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/auth_cubit/cubit/verify_cubit/verify_state.dart';
import 'package:haraj_app/app/auth_cubit/data/dio_helper.dart';

import '../../data/sp_helper.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit() : super(InitialVerifyState());

verify() async {
    emit(LoadingVerifyState());
    try {
      String? deviceName = await SpHelper.spHelper.getDeviceName();
      String? id = await SpHelper.spHelper.getId();
      print("id user in verify : $id");
      DioHelper.dioHelper
          .verify('0000', deviceName!, id!);
      print("id user after verify : $id");
      emit(SucessVerifyState());
    } on Exception catch (e) {
      emit(FailureVerifyState());
    }
  }
}
