import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth_cubit/data/sp_helper.dart';

class StringCubit extends Cubit<String> {
  StringCubit() : super(""); // Initial state is an empty string
  static StringCubit get(context)=>BlocProvider.of(context);

  // Method to retrieve and emit a String value from SharedPreferences
  String? select_value_MechanicalStatuses;

  void getSelectedValue() async {
    select_value_MechanicalStatuses=SpHelper.spHelper.getValue();
    emit(select_value_MechanicalStatuses!);

  }
}