import 'package:flutter/material.dart';

import '../routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
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
            'Hi! ehsan $name',
            style: TextStyle(
              fontSize: 28,
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
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'enter psw',
                    labelText: 'psw',
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                SizedBox(height: 20.0),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });

                    // ignore: unused_local_variable
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton ? 50 : 150,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      )),
                )
                // ElevatedButton(
                //   child: Text('Login'),
                //   style: TextButton.styleFrom(),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                //   },
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
