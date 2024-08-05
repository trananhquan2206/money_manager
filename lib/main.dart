import 'package:flutter/material.dart';
import 'package:money_manager/views/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          // useMaterial3: true,
          primarySwatch: Colors.blue,
          fontFamily: 'Roboto',
        ),
        home: const LoginPage());
  }
}
