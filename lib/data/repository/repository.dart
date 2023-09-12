import 'package:dartz/dartz.dart';
import 'package:haraj_app/data/repository/repository_impl.dart';

import '../remote/error/error_handler.dart';
import '../remote/error/failure.dart';



class Repository{
  static Future<Either<Failure,Map<String,dynamic>>?> postRepository({
    required String url,
    Map<String, dynamic>? data
  })async{
    await  RepositoryImpl.dioPostRequest(
        url: url,
        data: data
    ).then((request) =>
        request.fold(
          // بيوفر 2 ميثود وحدة للفشل و وحدة للنجاح
                (faliure) {
              return Failure(faliure.code,faliure.message);
            },
                (response) async{
              if(response.data!=null){
                print('postRepository ${response.data}');
                return response.data;
              }else{
                return Failure(ResponseCode.NO_CONTENT,ResponseMessage.NO_CONTENT);
              }
            }
        )
    ).catchError((error){
      return Failure(error.hashCode,error.toString());
    })
        .onError((error,stackTrace){
      return Failure(error.hashCode,error.toString());
    });
  }
}