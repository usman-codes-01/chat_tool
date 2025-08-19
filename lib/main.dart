import 'package:chat_tool/screens/auth/login_screen.dart';
import 'package:chat_tool/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


late Size mq;

void main() {
  _initializedFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Room',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red, // 🔴 default AppBar color
          foregroundColor: Colors.white, // text/icon color
        ),
      ),

      home: const LoginScreen(),
    );
  }}
_initializedFirebase() async {

// ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

