import 'package:flutter/material.dart';

class InitView extends StatelessWidget {
  const InitView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(

            gradient: LinearGradient(
                colors:[Colors.green, Colors.white,Colors.red,] ),
            borderRadius: BorderRadius.circular(20)
        ),
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
