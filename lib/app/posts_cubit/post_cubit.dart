import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/auth_cubit/data/sp_helper.dart';
import 'package:haraj_app/app/posts_cubit/post_stats.dart';
import 'package:haraj_app/data/remote/api_url.dart';
import 'package:image_picker/image_picker.dart';
import '../../data/remote/dio_helper.dart';
import '../model/posts_model/favorite_model.dart';
import '../model/posts_model/get_favorites_model.dart';
import '../model/posts_model/get_posts_model.dart';
import '../model/posts_model/show_posts_model.dart';

class PostsCubit extends Cubit<PostsState>{
  PostsCubit():super(InitialPostsState());

  static PostsCubit get(context)=>BlocProvider.of(context);
  ////////////////////////////////////Get Posts //////////////////////////////
  GetPostsModel? getPostsModel;
  getPosts() async{
    emit(LoadingPostsState());

    await DioHelper.getData(
      url: ApiUrls.GET_POSTS,
      // token: SpHelper.spHelper.getToken(),
      token: '237|hUEpZXvxIKSJjW3IR02gErR3zvF4N8JdKH0FuJ8v',
    ).then((value) {
      getPostsModel = GetPostsModel.fromJson(value.data);
      print(value.data);
      print('get posts states : ${getPostsModel!.status}');
      emit(SucessPostsState());
    }).catchError((error) {
      print('getHomeData -- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailurePostsState());
    });
  }
  ////////////////////////////////////Show Posts//////////////////////////////
  ShowPostModel? showPostModel;
  showPosts() async{
    emit(LoadingPostsState());

    await DioHelper.getData(
      url: ApiUrls.SHOW_POSTS  + "1",
      token: SpHelper.spHelper.getToken(),
      // query: {"id":'1'},
    ).then((value) {
      showPostModel = ShowPostModel.fromJson(value.data);
      print(value.data);
      print('get posts states : ${getPostsModel!.status}');
      emit(SucessPostsState());
    }).catchError((error) {
      print('getHomeData -- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailurePostsState());
    });
  }
  //////////////////////////////////////Get Favorites///////////////////////////

  GetFavoritesModel? getFavoritesModel;
  getFavorites() async{
    emit(LoadingPostsState());

    await DioHelper.getData(
      url: ApiUrls.GET_FAVORITES,
      token: SpHelper.spHelper.getToken(),
    ).then((value) {
      getFavoritesModel = GetFavoritesModel.fromJson(value.data);
      print(value.data);
      print('get Favorites states : ${getFavoritesModel!.status}');
      emit(SucessPostsState());
    }).catchError((error) {
      print('getHomeData -- ${error.toString()}');
      // emit(ErrorHomeData(error.toString()));
      emit(FailurePostsState());
    });
  }

  /////////////////////////////////////Store////////////////////////////////////


 ///////////////////////////////////Post Favorites//////////////////////////////

  FavoriteModel? favoriteModel;
  Favorites(XFile? pickedFile1,XFile? pickedFile2,)async{
    emit(LoadingPostsState());

    String fileName1 = pickedFile1!.path.split('/').last;
    String fileName2 = pickedFile2!.path.split('/').last;

    FormData formData = FormData.fromMap({
      'price': '200',
      'car_id': '2',
      'brand_id': '2',
      'body_id': '3',
      'mechanical_status_id': '2',
      "standard_id":"4",
      "general_status_id":"2",
      "fuel_id":"1",
      "gear_id":"2",
      "driving_side_id":"2",
      "seller_type_id":"2",
      "technical_advantage_id":"2",
      "seat_id":"2",
      "cylinder_id":"4",
      "door_id":"3",
      "category_id":"1",
      "year":"2018",
      "engine_id":"2",
      "distance":"120",
      "out_color":"2",
      "in_color":"3",
      "details":"For selling, urgent",
      "guarantee":"+972599000000",
      "finance":"0",
      "exportable":"0",
      "whatsapp":"+972599000000",
      "facebook":"faceTest",
      "whatsapp_connection":"1",
      "facebook_connection":"1",
      "call":"1",
      "chat":"1",
      'gallery[0]':  await MultipartFile.fromFile(pickedFile1.path, filename:fileName1),
      'gallery[1]':  await MultipartFile.fromFile(pickedFile2.path, filename:fileName2),
    });
    await DioHelper.postFile(
      url:  ApiUrls.FAVORITES,
      token:'221|mOJmC4GBKfrcapZRYv7TEyYBH8lSfcxlcDjEL84c',
      // token: SpHelper.spHelper.getToken(),
      data: formData,
      lang: 'en',
    ).then((value) {
      favoriteModel = FavoriteModel.fromJson(value.data!);
      print(value.data);
      emit(SucessPostsState());
    }).catchError((error) {
      print('favorite Data -- ${error.toString()}');
      emit(FailurePostsState());
    });
  }

}