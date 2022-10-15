import 'package:flutter/foundation.dart';
import 'package:login_ap/app/componets/home/model/model.dart';
import 'package:login_ap/app/componets/home/model/model_post.dart';

import '../services/api_services.dart';

class HomePageView extends ChangeNotifier {
  bool? isLoading;

  List<Result> list = [];

  HomePageView() {
    inInit();
    notifyListeners();
  }
  inInit() async {
    isLoading = true;
    notifyListeners();
    await getData();
    isLoading = false;
    notifyListeners();
  }

  Future<void> getData() async {
    final ModelRsponce data = ModelRsponce(
      category: "movies",
      language: "kannada",
      genre: "all",
      sort: "voting",
    );

    Person? personresponce = await HomeApiService().apiCall(data);

    if (personresponce != null) {
      //print(personresponce.message);
      list.clear();
      list.addAll(personresponce.result);
      // print(list.length);
      notifyListeners();
    }

    notifyListeners();
  }
}
