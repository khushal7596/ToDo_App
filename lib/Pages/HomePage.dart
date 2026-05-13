import 'package:flutter/material.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/util/dialog_box.dart';
import '../util/todo_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // reference the hive box

  final _myBox  = Hive.box('myBox');
  // Text  Controller 
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    
    // if this is !st Time ever opn the app then creat default data
    if(_myBox.get("TODOLIST") == null){
      db.creatInitialData();
    }else{
      db.loadData();
    }
    super.initState();
  }



  final _controller = TextEditingController();
  // checkBox 
  void checkBoxChanged(bool? value , int index){
    setState(() {
     db.todoList[index][1] = !db.todoList[index][1];

    });
    db.update();
  }

  // Save New Task 
  void saveNewTask(){
    setState(() {
      db.todoList.add([_controller.text , false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.update();
  }


  void createNewTask (){
    showDialog(context: context, builder: (context) {
      return DialogBox(
        controller:_controller,
        onSave: saveNewTask,
        onCencle: () => Navigator.of(context).pop(),
      );
    });

  }

  void deleteTask (int index){
    setState(() {
      db.todoList.removeAt(index);
    });
    db.update();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold ,),
          title: Text("ToDo App" ),
          backgroundColor: Colors.blueGrey,
        ),

        body: ListView.builder(
          itemCount: db.todoList.length ,
          itemBuilder: (context, index) {
            return TodoTile(taskname: db.todoList[index][0], taskCheck: db.todoList[index][1], onchanged: (value) => checkBoxChanged(value , index) , deleteFuntion: (context) => deleteTask(index),);
          },
        ),



        floatingActionButton: FloatingActionButton(onPressed: createNewTask , child: Icon(Icons.add),),
    );
  }
}