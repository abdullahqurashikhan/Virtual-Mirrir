// splash_screen.dart
import 'package:flutter/material.dart';
import 'routes.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Routes.onboarding);
    });
    return Scaffold(
      body: Center(
        child: Text("Virtual Mirror", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
