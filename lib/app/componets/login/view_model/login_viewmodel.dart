import 'package:flutter/material.dart';
import 'package:login_ap/app/componets/home/view/home_page.dart';

import '../../sign_up/model/model.dart';

class LoginViewModel extends ChangeNotifier {
  final nameController = TextEditingController();
  final password = TextEditingController();

  Model? model;
  checkLogin(context) {
    if (nameController.text == model?.name && password.text == model?.pass) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.amber[300],
          content: const Text("Registration Completed")));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const HomePage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.amber[300],
          content: const Text("Invalid Credentials")));
    }
  }
}
