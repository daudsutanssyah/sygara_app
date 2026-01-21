import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';
import 'package:sygara_app/screens/navigation/bottom_nav_bar.dart';
import 'package:sygara_app/themes/app_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kIsWeb, // Hanya aktif di web
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,
      title: 'Sygara App',
      theme: AppTheme.lightTheme,
      home: const BottomNavBar(),
    );
  }
}
