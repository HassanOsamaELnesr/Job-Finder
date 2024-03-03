// ignore_for_file: unused_element

import 'package:dio/dio.dart';

Map<String, String> _headers = <String, String>{
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://project2.amit-learning.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getdata({
    required url,
    String? token,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      'token': token,
    };
    return await dio!.get(url, queryParameters: query);
  }
}
