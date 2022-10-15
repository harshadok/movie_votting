import 'package:flutter/material.dart';
import 'package:login_ap/app/componets/sign_up/view/sign_up.dart';
import 'package:provider/provider.dart';

import '../view_model/login_viewmodel.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<loginViewModel>();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          const Text(
            "Login with Your credentials",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.5))
                ],
                borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
              controller: authProvider.nameController,
              decoration: InputDecoration(
                  hintText: "name",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.5))
                ],
                borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
              controller: authProvider.password,
              decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Colors.orange,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: primaryColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: (() {
                    authProvider.checkLogin(context);
                  }),
                  child: const Text("Sign Up",
                      style: TextStyle(
                          //  fontFamily:
                          //  commontextStyle.fontFamily,
                          color: Colors.white))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              child: RichText(
                text: const TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      //fontFamily: commontextStyle.fontFamily,
                      letterSpacing: 1.0,
                    ),
                    children: [
                      TextSpan(
                        text: " Create",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ),
          )
        ],
      )),
    );
  }
}
