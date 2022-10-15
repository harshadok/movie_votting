import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:login_ap/app/componets/login/view/login.dart';
import 'package:provider/provider.dart';

import 'app/componets/home/viewmodel/home_viewmodel.dart';
import 'app/componets/login/view_model/login_viewmodel.dart';
import 'app/componets/sign_up/model/model.dart';
import 'app/componets/sign_up/view_model/sign_up_provider.dart';

Future<void> main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //getStudent();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((_) => SignUpProvider()),
        ),
        ChangeNotifierProvider(
          create: ((_) => HomePageView()),
        ),
        ChangeNotifierProvider(
          create: ((_) => loginViewModel()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
