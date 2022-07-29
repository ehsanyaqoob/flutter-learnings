import 'package:flutter/material.dart';

import 'home-page.dart';


void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
                   // ignore: prefer_const_constructors
                   home: HomePage(),
                   
    );
  }
}