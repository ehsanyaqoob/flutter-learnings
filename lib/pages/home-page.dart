
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = 'ehsan';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        title:Text('Catalog App'),
      ),
      body: Center(child: Container(
        child: Text('Welcome to 30 $days of flutter by $name'),
      ),),
      drawer: Drawer(),
    );
  }
}







