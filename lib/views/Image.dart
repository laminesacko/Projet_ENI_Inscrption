import 'package:flutter/material.dart';
import 'package:flutterpoject1/controllers/image_Controller.dart';
import 'package:flutterpoject1/views/Image_Detail.dart';
import '../models/images_model.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key});
  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Download(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: CircularProgressIndicator(),
            );
          }
          return Scaffold(
              drawer: Drawer(),
              appBar: AppBar(),
              body: ListView(

                children: [
                  for (int index = 0; index < myList.length; index++)
                    Hero(
                      tag: myList[index].address.toString(),
                      child: Material(
                        child: InkWell(
                          onTap: () async {
                            Navigat_Detail(
                                context: context,
                                source: myList[index].address,
                                name: myList[index].name,
                                index: index);
                          },
                          child: Stack(
                            children: [
                              Card(
                                child: Image.network(
                                  myList[index].address,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                "${myList[index].name}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                ],
              ));
        });
  }
}
