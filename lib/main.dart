import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trumeet/screens/home_screen.dart';
import 'package:trumeet/screens/login_screen.dart';
import 'package:trumeet/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

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
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen()
      },
      home: LoginScreen(),
    );
  }
}
