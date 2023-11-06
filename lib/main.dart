import 'package:flutter/material.dart';
import 'package:login_page/modules/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}
//stateless
//stateful

//class MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
