import 'package:flutter/material.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

class EmptyOrderPage extends StatelessWidget {
  const EmptyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img-empty.png'),
            const SizedBox(height: 40),
            Text('Belum ada pesanan... ', style: AppTextStyles.h2),
          ],
        ),
      ),
    );
  }
}
