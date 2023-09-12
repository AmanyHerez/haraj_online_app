

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/test_register/data/dio_helper.dart';
import '../../data/sp_helper.dart';
import 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(InitialLogoutState());


  Future<void> logout() async {
    emit(LoadingLogoutState());
    try {
      String? deviceName = await SpHelper.spHelper.getDeviceName();

      await DioHelper.dioHelper.Logout();
      emit(SucessLogoutState());
    } on Exception catch (e) {
      emit(FailureLogoutState());
    }
  }
}
