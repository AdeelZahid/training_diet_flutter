import 'package:flutter/material.dart';
import 'package:training_diet/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Training & Diet App',
      theme: ThemeData(
        // primaryColor: Colors.blue,
        primaryColor: Color(0xFF200087),
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}
