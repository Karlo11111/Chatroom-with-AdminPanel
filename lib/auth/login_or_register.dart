// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:loginp_page_hand_made/pages/login_page.dart';
import 'package:loginp_page_hand_made/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void TogglePages (){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return LoginPage(onTap: TogglePages);
    }else{
      return RegisterPage(onTap: TogglePages);
    }
  }
}
