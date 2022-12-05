import 'package:flutter/material.dart';
import 'package:oj_tix/pages/Home.dart';
import 'package:oj_tix/pages/Login.dart';
import 'package:oj_tix/pages/Register.dart';

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
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
      },
    );
  }
}
