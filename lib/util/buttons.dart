import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String Name ;
  VoidCallback onPressed ;
   Button({super.key , required this.Name , required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: onPressed,
      child: Text(Name),
      color: Theme.of(context).primaryColor
    );
  }
}