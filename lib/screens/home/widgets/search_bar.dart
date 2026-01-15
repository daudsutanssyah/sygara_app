import 'package:flutter/material.dart';
import 'package:sygara_app/screens/home/notifikasi_page.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.mediumGrey),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'cari apa? (cth. bayam, apel, etc.)',
                  hintStyle: AppTextStyles.bodyLarge.copyWith(
                    color: AppColors.mediumGrey,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotifikasiPage()),
              );
            },
            icon: Image.asset(
              'assets/icon/ic-notif.png',
              width: 45,
              height: 45,
            ),
          ),
        ],
      ),
    );
  }
}
