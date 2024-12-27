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
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    myList = List.generate(
      jsonResponse["hits"].length,
      (index) {
        return Listimage(
            address: jsonResponse["hits"][index]["largeImageURL"],
            name: jsonResponse["hits"][index]["user"]);
      },
    );
    return jsonResponse["hits"];
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return {"Error": "${response.statusCode}"};
  }
}

void Navigate_Detail({required BuildContext context, required int index}){
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) {
    return DetailImage(
        Mysource: myList[index].address,
        name: myList[index].name);
  }));
}