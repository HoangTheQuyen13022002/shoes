import 'package:flutter/material.dart';
import 'package:shoes/constants/constants.dart';
import 'package:shoes/presentation/home/screens/home_screen.dart';
import 'package:shoes/presentation/sign/screens/sign_in_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      color: const Color(0xFFF8F9FA).withOpacity(0.95),
      home: const HomeScreen(),
    );
  }
}
