import 'package:flutter/material.dart';
import'package:tugas_1/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
      theme: ThemeData(
        primaryColor: Colors.green,

      ),
      debugShowCheckedModeBanner: false,
      
    );
  }
}