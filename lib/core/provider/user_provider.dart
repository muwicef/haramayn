import 'package:flutter/material.dart';

import '../../data/models/user_model.dart';
import '../services/user_service.dart';

class UserProvider extends ChangeNotifier {
  UserModel userData = UserModel();
  bool isLoading = false;
  late int regStatusCode;

  changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future loadData(String phone, String password) async {
    userData = await UserService.getUserData(phone, password);
    changeLoading();
  }

  Future registrate(String name, String phone, String password) async {
    regStatusCode = await UserService.registrate(phone, password, name);
  }
}
