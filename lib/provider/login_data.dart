import 'package:flutter/material.dart';

class LoginData with ChangeNotifier {

  String user = '';
  String password = '';

  void saveLogin (String newUser, String newPassword) {
    user = newUser;
    password = newPassword;
    notifyListeners();
  }

}