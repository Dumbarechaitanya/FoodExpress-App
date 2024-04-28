import 'package:flutter/material.dart';
import 'package:foodexpress/pages/registerpage.dart';
import 'package:foodexpress/pages/loginpage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // intially, show login page
  bool showLoginPage = true;

  //togglebetween login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Loginpage(onTap: togglePages);
    } else {
      return Registerpage(onTap: togglePages);
    }
  }
}
