import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_url.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: ApiUrls.BASE_URL,
          receiveDataWhenStatusError: true,
          validateStatus: (statusCode) {
            if (statusCode == null) {
              return false;
            }
            if (statusCode == 422 || statusCode == 401) {
              // your http status code
              return true;
            } else {
              return statusCode >= 200 && statusCode < 300;
            }
          },
          headers: {
            'Content-Type': 'application/json',
            'lang': 'en',
          }),
    );
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    if (!kReleaseMode) {
      // its debug mode so print add logs
      dio.interceptors.add(PrettyDioLogger(
          requestHeader: true, requestBody: true, responseHeader: true));
    }
  }

  static Future<Response<Map<String, dynamic>>> postDate({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    String? token,
    required String lang,
  }) async {
    dio.options.headers = {'Authorization': 'Bearer $token'};
    return dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response<Map<String, dynamic>>> postFile({
    required String url,
    Map<String, dynamic>? query,
    var data,
    String? token,
    required String lang,
  }) async {
    dio.options.headers = {'Authorization': 'Bearer $token'};
    return dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response<Map<String, dynamic>>> putDate({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    String lang = 'en',
    String? auth,
  }) async {
    dio.options.headers = {'lang': lang, 'Authorization': 'Bearer $auth'};
    return dio.put(url, queryParameters: query, data: data);
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {'Authorization': 'Bearer $token'};
    return await dio.get(url, queryParameters: query);
  }
}

