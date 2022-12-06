import 'package:flutter/material.dart';
import 'package:oj_tix/screens/Home.dart';
import 'package:oj_tix/screens/Login.dart';
import 'package:oj_tix/screens/Register.dart';
import 'package:oj_tix/screens/Dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}
