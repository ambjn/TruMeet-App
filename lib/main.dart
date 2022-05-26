import 'package:flutter/material.dart';
import 'package:trumeet/screens/login_screen.dart';
import 'package:trumeet/utils/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TruMeet App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {'/login': (context) => LoginScreen()},
      home: LoginScreen(),
    );
  }
}
