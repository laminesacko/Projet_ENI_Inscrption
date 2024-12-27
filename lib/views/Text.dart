import 'package:flutter/material.dart';

class myText extends StatelessWidget {
  const myText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Bienvenu à la formation",
          style: TextStyle(
              color: Colors.green,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
