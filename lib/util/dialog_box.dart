import 'package:flutter/material.dart';
import 'package:todo_app/util/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCencle;


   DialogBox({super.key , required this.controller , required this.onSave , required this.onCencle});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        
    
      content: Container(
        height: 120,
        child: Column(
          
          children: [
            // get Input
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder() ,hintText: "New Task Name" ,  ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              
              // butons - >Save , cencle 

              Button(Name: "Save", onPressed: onSave),
              const SizedBox(width: 8,),
              Button(Name: "Cencle", onPressed:onCencle),
            ],)


            
          ],
        ),
      ),
    );

  }
}