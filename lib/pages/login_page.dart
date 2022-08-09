import 'package:flutter/material.dart';

import '../routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          Text(
            'Hi! ehsan',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'enter username',
                    labelText: 'username',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'enter psw',
                    labelText: 'psw',
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  child: Text('Login'),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
