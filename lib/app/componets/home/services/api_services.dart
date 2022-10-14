import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:login_ap/app/componets/home/model/model.dart';
import 'package:login_ap/app/componets/home/services/api.dart';

class HomeApiService {
  // Future<Person?> getTuftData() async {
  //   try {
  //     Response response = await DioServices.getMethod();
  //     if (response.statusCode == 200) {
  //       return Person.fromJson(response.data);
  //     }
  //   } on DioError catch (e) {
  //     //   return HomeTurfModel.fromJson(e.response!.data);
  //   } catch (e) {
  //     log("home api error meassage : $e");
  //   }
  //   return null;
  // }

  Future<dynamic> getTuftData({required String url}) async {
    return await Dio().get(url);
  }

  static Future<dynamic> postMethod(
      {required String url, required value}) async {
    return await Dio().post(url, data: value).then((value) => value);
  }
}
