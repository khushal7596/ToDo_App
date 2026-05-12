import 'package:flutter/material.dart';
import 'package:todo_app/Pages/HomePage.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
