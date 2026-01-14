import 'package:flutter/material.dart';
import 'package:sygara_app/screens/auth/login_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

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
    _navigateToLogin();
  }

  void _navigateToLogin() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset('assets/logo-putih.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Text(
              'Copyright © Reserved 2025',
              style: AppTextStyles.bodyLarge.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}