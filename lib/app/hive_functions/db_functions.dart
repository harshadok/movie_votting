// import 'package:flutter/widgets.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// import '../componets/sign_up/model/model.dart';

// //ValueNotifier<List<Model>> studentListNotifier = ValueNotifier([]);

// Future<void> addStudent(Model value) async {
//   final studentDb = await Hive.openBox<Model>('student_db');
//   final _id = await studentDb.add(value);
//   value.id = _id;
//   studentListNotifier.value.add(value);
//   studentDb.put(value.id, value);
//   studentListNotifier.notifyListeners();
// }

// Future<void> getStudent() async {
//   final studentDb = await Hive.openBox<Model>('student_db');
//   studentListNotifier.value.clear();
//   studentListNotifier.value.addAll(studentDb.values);
//   studentListNotifier.notifyListeners();
// }




