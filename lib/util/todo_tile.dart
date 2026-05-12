import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCheck;
  Function(bool?)? onChanged;
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCheck,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 25, right: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 113, 82, 163),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCheck, 
              onChanged: onChanged,
              activeColor: Colors.black,
              ),
            // Task Name
            Text(taskName ,style: TextStyle(decoration: taskCheck ? TextDecoration.lineThrough:TextDecoration.none),),
          ],
        ),
      ),
    );
  }
}
