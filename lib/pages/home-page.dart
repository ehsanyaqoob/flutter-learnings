import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_learning/models/catalog.dart';
import 'package:flutter_learning/models/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "ehsan";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogjson = await rootBundle.loadString('assets/files/catalog.json');
    // ignore: unused_local_variable
    var decoded = jsonDecode(catalogjson);
  }

  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App", style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: dumyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dumyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
