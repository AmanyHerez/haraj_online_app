import 'package:dartz/dartz.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../app/constants.dart';

import '../remote/dio_helper.dart';
import '../remote/error/error_handler.dart';
import '../remote/error/failure.dart';

import 'package:dio/dio.dart';

class RepositoryImpl {
  static Future<Either<Failure, Response<Map<String, dynamic>>>>
      dioPostRequest({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    bool isInternetCheck = await InternetConnectionChecker().hasConnection;
    if (isInternetCheck) {
      return Right(await DioHelper.postDate(
        url: url,
        data: data,
        query: query,
        token: Constants.TOKEN,
        lang: Constants.APP_LNAG,
      ));
    } else {
      return Left(Failure(ResponseCode.NO_INTERNET_CONNECTION,
          ResponseMessage.NO_INTERNET_CONNECTION));
    }
  }

  static Future<Either<Failure, Response<dynamic>>> dioGetRequest({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    bool isInternetCheck = await InternetConnectionChecker().hasConnection;
    if (isInternetCheck) {
      return Right(await DioHelper.getData(
        url: url,
        token: Constants.TOKEN,
        query: data,
      ).catchError((error) => print(error)));
    } else {
      return Left(Failure(ResponseCode.NO_INTERNET_CONNECTION,
          ResponseMessage.NO_INTERNET_CONNECTION));
    }
  }

  static Future<Either<Failure, Response<dynamic>>> dioPutRequest({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    bool isInternetCheck = await InternetConnectionChecker().hasConnection;
    if (isInternetCheck) {
      return Right(
          await DioHelper.putDate(url: url, auth: Constants.TOKEN, query: data)
              .catchError((error) => print(error)));
    } else {
      return Left(Failure(ResponseCode.NO_INTERNET_CONNECTION,
          ResponseMessage.NO_INTERNET_CONNECTION));
    }
  }
}
