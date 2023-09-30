import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/auth_cubit/data/sp_helper.dart';
import 'package:haraj_app/app/store_cubit/store_state.dart';
import 'package:haraj_app/data/remote/api_url.dart';
import 'package:image_picker/image_picker.dart';
import '../../data/remote/dio_helper.dart';
import '../model/store_model/get_store_model.dart';
import '../model/store_model/store_post_model.dart';
import '../model/store_model/update_store_address_model.dart';
import '../model/store_model/update_store_model.dart';

class StoreCubit extends Cubit<StoreState>{
  StoreCubit():super(InitialStoreState());

  ////////////////////////////////////Get Store //////////////////////////////

  static StoreCubit get(context)=>BlocProvider.of(context);
  GetStoreModel? getStoreModel;
   getStore() async{
    emit(LoadingStoreState());
   await DioHelper.getData(
      url: ApiUrls.GET_STORE,
      token: SpHelper.spHelper.getToken(),
    ).then((value) {
      getStoreModel = GetStoreModel.fromJson(value.data);
      print(value.data);
      print('get store states : ${getStoreModel!.status}');
      emit(SucessStoreState());
    }).catchError((error) {
      print('getHomeData -- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStoreState());
    });
  }
  //////////////////////////////////Get Store Post//////////////////////////////

  StorePostModel? storePostModel;
  getStorePost() async{
    emit(LoadingStoreState());
    await DioHelper.getData(
      url: ApiUrls.STORE_POST,
      token: SpHelper.spHelper.getToken(),
      query: {
        'sold':'0'
      }
    ).then((value) {
      storePostModel = StorePostModel.fromJson(value.data);
      print(value.data);
      print('get store states : ${storePostModel!.status}');
      emit(SucessStoreState());
    }).catchError((error) {
      print('get STORE POST Data -- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailureStoreState());
    });
  }

  ////////////////////////////////////Update Store//////////////////////////////

  UpdateStoreModel? updateStoreModel;
  updateStore(XFile? pickedFile1,XFile? pickedFile2,XFile? pickedFile3,)async{
    emit(LoadingStoreState());

   String fileName = pickedFile1!.path.split('/').last;
   String fileName2 = pickedFile2!.path.split('/').last;
   String fileName3 = pickedFile3!.path.split('/').last;
    FormData formData = FormData.fromMap({
      'name': 'John',
      'email': 'john@example.com',
      'mobile': '0599999999',
      'commercial_register': '0599999999',
      'description': 'omar omar omar ',
      "avatar": await MultipartFile.fromFile(pickedFile1.path, filename:fileName),
      'gallery[0]':  await MultipartFile.fromFile(pickedFile2.path, filename:fileName2),
      'gallery[1]':  await MultipartFile.fromFile(pickedFile3.path, filename:fileName3),
    });
    await DioHelper.postFile(
      url:  ApiUrls.UPDATE_STORE,
      token:'221|mOJmC4GBKfrcapZRYv7TEyYBH8lSfcxlcDjEL84c',
      // token: SpHelper.spHelper.getToken(),
      data: formData,
      lang: 'en',
    ).then((value) {
      updateStoreModel = UpdateStoreModel.fromJson(value.data!);
      print(value.data);
      emit(SucessStoreState());
    }).catchError((error) {
      print('updateUserData -- ${error.toString()}');
      //emit(ErrorUpdateUserData(error.toString()));
      emit(FailureStoreState());
    });
}
///////////////////////////// Update Store Adreess//////////////////////////////
  UpdateStoreAddressmodel? updateStoreAddressmodel;
  updateStoreAdreess()async{
    emit(LoadingStoreState());
    await DioHelper.postDate(
      url:  ApiUrls.UPDATE_STORE_ADDRESS,
      token:'221|mOJmC4GBKfrcapZRYv7TEyYBH8lSfcxlcDjEL84c',
      // token: SpHelper.spHelper.getToken(),
      data: {
        'governorate_id': '2',
        'city_id': '8',
        'lat': '65',
        'lng': '65',
        'street': 'omar st2',
        'building_no': 'a4522',
        'post_code': '98722',
      },
      lang: 'en',
    ).then((value) {
      updateStoreAddressmodel = UpdateStoreAddressmodel.fromJson(value.data!);
      print(value.data);
      emit(SucessStoreState());
    }).catchError((error) {
      print('updateAddressData -- ${error.toString()}');
      //emit(ErrorUpdateUserData(error.toString()));
      emit(FailureStoreState());
    });
  }


}