import 'package:flutter/material.dart';
import 'package:login_ap/app/componets/login/view/login.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  Future<void> showConfrom(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!mvaskgit
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'About',
          ),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Company :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("GEEKSYNERGY TECHNOLOGIE")
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Address :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Sanjayangar,Bangaluru")
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          " Phone:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("96**34154")
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          " Email:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("abc@gmail.com")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Confirm',
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'Cancel',
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Center(),
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('About'),
            onTap: () => {showConfrom(context)},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  (Route<dynamic> route) => false)
            },
          ),
        ],
      ),
    );
  }
}
