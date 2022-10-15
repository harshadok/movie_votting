import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:login_ap/app/componets/home/view/home_page.dart';
import 'package:login_ap/app/componets/sign_up/model/model.dart';

class SignUpProvider extends ChangeNotifier {
  List<Model> personList = [];
  final nameController = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();
  final phonenumber = TextEditingController();

  Future<void> adDetails(context) async {
    final name = nameController.text.trim();
    final pass = password.text.trim();
    final emai = email.text.trim();
    final phone = phonenumber.text.trim();

    if (name.isEmpty || pass.isEmpty || emai.isEmpty || phone.isEmpty) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close))
              ],
              title: const Text(
                "Fill The Full Details",
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            );
          });
    } else {
      final person = Model(
        name: name,
        pass: pass,
        email: emai,
        phone: phone,
      );

      addStudent(person);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.amber[300],
          content: const Text("Registration Completed")));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const HomePage()));
    }
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
