import 'package:flutter/material.dart';
import 'package:todo_app/Pages/HomePage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {


 await Hive.initFlutter();

 var box = await Hive.openBox('myBox');
  

  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
