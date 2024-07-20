import 'package:flutter/material.dart';
import 'package:shoes/presentation/home/widgets/bottom_navigation_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF707B81).withOpacity(0.2),
        child: Center(
          child: Text('NotificationScreen',style: TextStyle(fontSize: 40),),
        ),
      ),
      bottomNavigationBar: BottomNavigationScreen(),
    );
  }
}
