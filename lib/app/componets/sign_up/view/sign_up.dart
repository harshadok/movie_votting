import 'package:flutter/material.dart';
import 'package:login_ap/app/componets/home/view/home_page.dart';
import 'package:login_ap/app/componets/sign_up/view_model/sign_up_provider.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    final authProvider = context.watch<SignUpProvider>();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: hight * 0.2,
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )),
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
                    hintText: "Your Name",
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
                controller: authProvider.phonenumber,
                decoration: InputDecoration(
                    hintText: "Your Phone",
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
                controller: authProvider.email,
                decoration: InputDecoration(
                    hintText: "Your eamil id",
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
                    hintText: "Your Password",
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
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  authProvider.adDetails();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.amber[300],
                      content: const Text("Registration Completed")));
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => const HomePage()));
                },
                child: const Text("Sign Up")),
          ],
        ),
      )),
    );
  }
}
