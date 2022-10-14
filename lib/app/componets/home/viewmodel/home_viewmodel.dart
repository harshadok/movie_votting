import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:login_ap/app/componets/home/model/model.dart';
import 'package:login_ap/app/componets/home/services/api.dart';

class HomePageView extends ChangeNotifier {
  bool isLoading = false;

  HomePageView() {
    inInit();
  }
  inInit() async {
    isLoading = true;
    notifyListeners();
    apiCall();
    isLoading = false;
    notifyListeners();
  }

  List<QueryParam> posts = [];

  Future<Person?> apiCall() async {
    Person? data;
    try {
      Response response = await DioServices.postMethod(
          url: DioServices.baseUrl, value: data!.toJson());

      if (response.statusCode == 200) {
        Person newData = Person.fromJson(response.data);
        response.data.forEach(
          (element) {
            posts.add(QueryParam.fromJson(element));
          },
        );
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
