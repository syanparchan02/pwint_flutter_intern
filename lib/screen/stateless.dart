import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Intern Blog'),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}