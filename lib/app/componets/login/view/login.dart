import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 200,
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
              //   controller: ,
              decoration: InputDecoration(
                  hintText: "email",
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
              //   controller: ,
              decoration: InputDecoration(
                  hintText: "pass",
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
        ],
      )),
    );
  }
}
