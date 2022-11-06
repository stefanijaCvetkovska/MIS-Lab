import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 1 - Mobile Information Systems',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.black45,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('182019 Stefanija Cvetkovska'),
        ),
        body: const Center(
          child: Text('Hello World', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}