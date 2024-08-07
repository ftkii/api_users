import 'dart:convert';

import 'package:hash_pj/models/users.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<Users>> getUsers() async {
    String url = "https://jsonplaceholder.typicode.com/users";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      //اتأكد اذا البيانات سليمه
      //200 good   400 not found  500 error in server
      List<dynamic> data =
          json.decode(response.body); //جاب كل البيانات وفك تشفيرها حولها للست
      return data
          .map((json) => Users.fromJson(json))
          .toList(); //ماب كني اسوي لوب على الداتا اللي عندي
      //وتخزن البيانات كلست
    } else {
      throw Exception("failed to load users");
    }
  }
}
