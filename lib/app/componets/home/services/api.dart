import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// class Api {
//
// }
class DioServices {
  static Future<dynamic> postMethod(
      {required String url, required value}) async {
    return await Dio().post(url, data: value).then((value) => value);
  }

  static Future<dynamic> getMethod() async {
    return await Dio()
        .get("https://hoblist.com/api/movieList")
        .then((value) => value);
  }

  static var baseUrl = "https://hoblist.com/api/movieList";
}

class SignUpService extends ChangeNotifier {}
