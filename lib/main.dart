import 'package:flutter/material.dart';
import 'login.dart';
import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/Login': (context) => const Login(),
        '/List': (context) => ListV(),
      },
      title: 'ListView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 0, 234)),
          useMaterial3: true),
      home: const Login(),
    );
  }
}
