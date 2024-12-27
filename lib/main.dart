import 'package:flutter/material.dart';
import 'package:flutterpoject1/views/Container.dart';
import 'package:flutterpoject1/views/Image.dart';
import 'package:flutterpoject1/views/Text.dart';
 main(){
  return runApp(FisrtApp());
}
class FisrtApp extends StatelessWidget {
  const FisrtApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "ENI-ABT",
      debugShowCheckedModeBanner: false,
      home: MyImage()
    );
  }
}
