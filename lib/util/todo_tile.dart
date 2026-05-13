import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/main.dart';

// class TodoTile extends StatelessWidget {
//   final String taskName;
//   final bool taskCheck;
//   Function(bool?)? onChanged;
//   TodoTile({
//     super.key,
//     required this.taskName,
//     required this.taskCheck,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 25.0, top: 25, right: 25),
//       child: Container(
//         padding: EdgeInsets.all(25),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 113, 82, 163),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Row(
//           children: [
//             Checkbox(
//               value: taskCheck, 
//               onChanged: onChanged,
//               activeColor: Colors.black,
//               ),
//             // Task Name
//             Text(taskName ,style: TextStyle(decoration: taskCheck ? TextDecoration.lineThrough:TextDecoration.none),),
//           ],
//         ),
//       ),
//     );
//   }
// }



class TodoTile extends StatelessWidget {
  final String taskname;
  final bool taskCheck;
  Function(bool?)? onchanged;
  Function(BuildContext)? deleteFuntion;
   TodoTile({super.key , required this.taskname , required this.taskCheck , required this.onchanged , this.deleteFuntion});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0 , left: 20 , right: 20),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
           children: [
            SlidableAction(onPressed: deleteFuntion , icon: Icons.delete,backgroundColor: Colors.red, borderRadius: BorderRadius.circular(10),),
            
           ]
           ),
        child: Container(
          
          height: 80,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey,
        
            ),
        
          
        
        
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
            children: [
              Checkbox(value: taskCheck, onChanged: onchanged),
        
              Text(taskname , style: TextStyle(fontSize: 20  , color: Colors.white),)
            ],
           ),
         ),
          
        ),
      ),
    );
  }
}