import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:login_ap/app/componets/sign_up/model/model.dart';

class SignUpProvider extends ChangeNotifier {
  List<Model> personList = [];
  final nameController = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();
  final phonenumber = TextEditingController();

  Future<void> adDetails() async {
    final name = nameController.text.trim();
    final pass = password.text.trim();
    final emai = email.text.trim();
    final phone = phonenumber.text.trim();

    final person = Model(
      name: name,
      pass: pass,
      email: emai,
      phone: phone,
    );

    addStudent(person);
  }

  Future<void> addStudent(Model value) async {
    final studentDb = await Hive.openBox<Model>('student_db');
    final id = await studentDb.add(value);
    value.id = id;
    personList.add(value);
    notifyListeners();
    studentDb.put(value.id, value);
    notifyListeners();
    //print(personList.length);
  }

  Future<void> getStudent() async {
    final studentDb = await Hive.openBox<Model>('student_db');
    personList.clear();
    personList.addAll(studentDb.values);
    notifyListeners();
  }
}
