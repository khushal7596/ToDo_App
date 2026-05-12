import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor : const Color.fromARGB(255, 190, 167, 255),
      content: Container(
        height: 300,
        width: 400,
        child: Column(
          children: [
            TextField(
              
            )
          ],
        ),
      ),
    );
  }
}