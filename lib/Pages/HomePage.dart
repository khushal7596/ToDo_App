import 'package:flutter/material.dart';
import 'package:todo_app/util/dialog_box.dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todo = [
    ["Do DSA", false],
    ["Do DEVLOPMENT", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todo[index][1] = !todo[index][1];
    });
  }

  void createNewTask(){
    showDialog(context: context, builder: (context){
      return DialogBox();
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 206, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 113, 82, 163),
        title: Text("TO Do App"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: todo[index][0],
            taskCheck: todo[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
