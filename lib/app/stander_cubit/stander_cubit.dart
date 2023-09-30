import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/auth_cubit/data/sp_helper.dart';
import 'package:haraj_app/app/posts_cubit/post_stats.dart';
import 'package:haraj_app/app/stander_cubit/stander_state.dart';
import 'package:haraj_app/data/remote/api_url.dart';
import 'package:image_picker/image_picker.dart';
import '../../data/remote/dio_helper.dart';

import '../model/stander_model/general_name_model.dart';
import '../model/stander_model/general_number_model.dart';

class StanderCubit extends Cubit<StanderState>{
  StanderCubit( ):super(InitialStanderState());

  int selectedValue =1;
  int id_Vgroup_MechanicalStatuses = 1;

  static StanderCubit get(context)=>BlocProvider.of(context);
  ////////////////////////////////////Get Fuels//////////////////////////////
  GeneralNameModel? fuelsModel;
   GeneralNameModel? generalNameModel;
  getFuels() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.FUELS,
    ).then((value) {
      fuelsModel = GeneralNameModel.fromJson(value.data);
      print(value.data);
      print('fuelsModel states : ${fuelsModel!.status}');
      emit(SucessStanderState());
    }).catchError((error) {
      print(' fuelsModel-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }
////////////////////////////////////Get Gears//////////////////////////////
  getGears() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.GEARS,
    ).then((value) {
      generalNameModel = GeneralNameModel.fromJson(value.data);
      print(value.data);
      print('GEARS: ${generalNameModel!.status}');
      emit(SucessStanderState());
    }).catchError((error) {
      print(' GEARS-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }
  ////////////////////////////////////Get TECHINICAL_ADVANTAGE//////////////////////////////
  getTechnicalAdvantages() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.TECHINICAL_ADVANTAGE,
    ).then((value) {
      generalNameModel = GeneralNameModel.fromJson(value.data);
      print(value.data);
      print('getTechnicalAdvantages: ${generalNameModel!.status}');
      emit(SucessStanderState());
    }).catchError((error) {
      print(' getTechnicalAdvantages-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }
  ////////////////////////////////////Get general-statuses//////////////////////////////
  getGeneralStatuses() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.GENERAL_STATUS,
    ).then((value) {
      generalNameModel = GeneralNameModel.fromJson(value.data);
      print(value.data);
      print('general-statuses: ${generalNameModel!.status}');
      emit(SucessStanderState());
    }).catchError((error) {
      print(' general-statuses-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }////////////////////////////////////Get mechanical-statuses//////////////////////////////
  GeneralNameModel? mechanicalStatusesModel;
  getMechanicalStatuses() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.MECHINICAL_STATUS,
    ).then((value) {
      mechanicalStatusesModel = GeneralNameModel.fromJson(value.data);
      print(value.data);
      print('mechanical-statuses: ${mechanicalStatusesModel!.status}');
      listMechanicalStatuses=mechanicalStatusesModel!.data;
      emit(SucessStanderState());
    }).catchError((error) {
      print(' mechanical-statuses-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }
  List<Data>? listMechanicalStatuses;
  // =StanderCubit.get(context).mechanicalStatusesModel!.data;

  /////////////////////////////////////get Engines///////////////////////////////
  GeneralNumberModel? generalNumberModel;
  getEngines() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.ENGINES,
    ).then((value) {
      generalNumberModel= GeneralNumberModel.fromJson(value.data);
      print(value.data);
      print('ENGINES states : ${generalNumberModel!.status}');
      emit(SucessStanderState());
    }).catchError((error) {
      print(' ENGINES-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }  /////////////////////////////////////get Seats///////////////////////////////
  getSeats() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.SEATS,
    ).then((value) {
      generalNumberModel= GeneralNumberModel.fromJson(value.data);
      print(value.data);
      print('SEATS states : ${generalNumberModel!.status}');
      emit(SucessStanderState());
    }).catchError((error) {
      print(' SEATS-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }
  /////////////////////////////////////get Doors///////////////////////////////
  getDoors() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.DOORS,
    ).then((value) {
      generalNumberModel= GeneralNumberModel.fromJson(value.data);
      print(value.data);
      print('Doors states : ${generalNumberModel!.status}');
      emit(SucessStanderState());
    }).catchError((error) {
      print(' Doors-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }/////////////////////////////////////get CYLINDERS///////////////////////////////
  getCylinders() async{
    emit(LoadingStanderState());

    await DioHelper.getData(
      url: ApiUrls.CYLINDERS,
    ).then((value) {
      generalNumberModel= GeneralNumberModel.fromJson(value.data);
      print(value.data);
      print('getCylinders states : ${generalNumberModel!.status}');
      emit(SucessStanderState());
    }).catchError((error) {
      print(' getCylinders-- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStanderState());
    });
  }

}