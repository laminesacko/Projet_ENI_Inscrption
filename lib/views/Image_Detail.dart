import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
   DetailImage({required this.Mysource,required this.name,super.key});
   String Mysource;
   String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    
    ),
    body: Column(children: [
      Hero(
          tag: Mysource.toString(),
          child: Card(child: Image.network(Mysource),)),
      Text(name)
    ],),
    );
  }
}
