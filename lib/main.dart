import 'package:authentifer_app/pages/login.dart';
import 'package:authentifer_app/pages/signup.dart';
import 'package:authentifer_app/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" :(context) => const Welcome(),
        "/login" :(context) => const Login(),
        "/signup" :(context) => const Signup(),
      },
    );
   
  }
  
}
  
   