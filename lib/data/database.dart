import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  // refrence the box
List todoList =[];
  final _myBox = Hive.box('myBox');

void creatInitialData(){
  todoList = [["Do DSA " , false ] , ["Do DEVELOPMENT" , false ] ];

}

void loadData(){
  todoList = _myBox.get("TODOLIST");

}  


void update(){
_myBox.put("TODOLIST", todoList);
}



}