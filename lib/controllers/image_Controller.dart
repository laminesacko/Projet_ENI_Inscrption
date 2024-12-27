import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../models/images_model.dart';
import '../views/Image_Detail.dart';

Future<dynamic> Download() async {
  var url = Uri.parse(
      "https://pixabay.com/api/?key=38047885-6c2f9ed03b1ee6dfb2f29116b&q=yellow+flowers&image_type=photo");

  var response = await http.get(url);
  if (response.statusCode == 200) {
    Map jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['total'];
    print('Number of books about http: $jsonResponse.');
    myList = List.generate(
      jsonResponse["hits"].length,
      (index) {
        return Listimage(
            address: jsonResponse["hits"][index]["userImageURL"].toString(),
            name: jsonResponse["hits"][index]["user"].toString());
      },
    );
    return  jsonResponse;
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return {"result":"Request failed with status: ${response.statusCode}."};
  }
}

void Navigat_Detail(
    {required BuildContext context, required String source, required String name, required int index}){
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) {
    return DetailImage(
        Mysource: myList[index].address,
        name: myList[index].name);
  }));
}