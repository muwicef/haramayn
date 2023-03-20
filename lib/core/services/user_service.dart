import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../data/models/user_model.dart';

class UserService {
  static Future<UserModel> getUserData(String phone, String password) async {
    const String baseUrl = "http://saidbots.ga/api/login";
    var map = <String, dynamic>{};

    map['phone'] = phone;
    map['password'] = password;

    http.Response response = await http.post(
      Uri.parse(baseUrl),
      body: map,
    );

    var data = await json.decode(response.body);

    if (response.statusCode == 200) {
      return UserModel.fromJson(data);
    } else {
      return UserModel();
    }
  }

  static Future<int> registrate(
      String phone, String password, String name) async {
    const String baseUrl = "http://saidbots.ga/api/register";
    var map = <String, dynamic>{};

    map['phone'] = phone;
    map['password'] = password;
    map['name'] = name;

    http.Response response = await http.post(
      Uri.parse(baseUrl),
      body: map,
    );

    return response.statusCode;
  }
}
