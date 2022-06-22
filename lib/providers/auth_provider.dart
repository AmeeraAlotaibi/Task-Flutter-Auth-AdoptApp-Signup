import 'package:adopt_app/models/user.dart';
import 'package:adopt_app/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  late User user;
  late String token;

  void userSignup() async {
   token = await AuthService().signup(user);
  }
}
