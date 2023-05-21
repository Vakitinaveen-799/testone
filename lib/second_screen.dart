import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';



import 'introduction_screen.dart';


class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => IntroScreen()),
          (route) => false);
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: 
          [  Color(0xFF64B5F6),
              Color(0xFF0D47A1),],
              begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/viderlogo.png', // replace with your logo image asset
                width: 150.0,
                height: 150.0,
                ),
                SizedBox(height: 16),
                
            ],
          ),
        ),
      ),
    );
  }
}