import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart';

class DioHelper {
  final String _baseUrl = "http://haraj-online.com/api";
  Dio dio = Dio();

  Future<dynamic> post(
      String url, Map<String, String> body, Map<String, String> header) async {
    // var urlPath= Uri.parse(_baseUrl + url);

    final response = await dio.post(
      '$_baseUrl$url',
      data: body,
      options: Options(headers: header),
    );

    return response.data;
  }
}
