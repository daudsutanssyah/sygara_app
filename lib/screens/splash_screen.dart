import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';
import 'package:sygara_app/screens/bottom_nav_bar.dart';
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

      if (SpUtil.getString("email") == null || SpUtil.getString("email") == "") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
        
      } else {
        Get.offAll(BottomNavBar());
      }

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
