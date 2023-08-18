import 'package:chatapp/main.dart';
import 'package:chatapp/pages/register_page.dart';
import 'package:chatapp/services/auth/login_or_register.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
    );
  }
}