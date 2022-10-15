import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:login_ap/app/componets/home/model/model.dart';
import 'package:login_ap/app/componets/home/model/model_post.dart';
import 'package:login_ap/app/componets/home/services/api.dart';

class HomeApiService {
  static Future<dynamic> postMethod(
      {required String url, required value}) async {
    return await Dio().post(url, data: value).then((value) => value);
  }

  Future<Person?> apiCall(ModelRsponce data) async {
    try {
      Response response = await HomeApiService.postMethod(
          url: Url.urlBase, value: data.toJson());

      if (response.statusCode == 200) {
        Person newData = Person.fromJson(response.data);

        return newData;
      }
    } on DioError catch (e) {
      if (e.response!.statusCode == 401) {
        return Person.fromJson(e.response!.data);
      }
    } catch (e) {
      log("SignUp error message : $e");
    }
    return null;
  }
}
