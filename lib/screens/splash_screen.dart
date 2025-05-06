import 'package:flutter/material.dart';
import 'package:sygara_app/screens/login_page.dart';
import 'package:sygara_app/themes/themes.dart';

import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    
    super.initState();
    movingPage();
  }

  void movingPage() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          // expanded widget yang digunakan dalam layout column atau row
          // untuk mengisi ruang yang tersisa
          Expanded(child: Center(child: Image.asset('assets/logo-putih.png'))),

          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Text(
              'Copyright © Reserved  2025',
              style: whiteTextStyle.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
