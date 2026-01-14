import 'package:flutter/material.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';
// import 'package:sygara_app/themes/themes.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/icon/ic-arrow-back.png',
            width: 40,
            height: 40,
          ),
        ),
        title: Text('Notifikasi', style: AppTextStyles.h4),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'Tandai terbaca',
              style: AppTextStyles.bodyLarge.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            decoration: BoxDecoration(
              color: AppColors.mintGreen,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Horee!! Pesanan Anda sedang diproses 🎉',
                          style: AppTextStyles.h4,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Cek di laman Pesanan sekarang!',
                          style: AppTextStyles.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 14),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.border),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pesanan Anda sudah sampai!',
                          style: AppTextStyles.h4,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Anda bisa cek kelengkapan Pesanan',
                          style: AppTextStyles.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// 