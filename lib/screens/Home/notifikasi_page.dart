import 'package:flutter/material.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

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
            child: InkWell(
              onTap: () {

              },
              borderRadius: BorderRadius.circular(4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Text(
                  'Tandai terbaca',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          _NotificationCard(
            title: 'Horee!! Pesanan Anda sedang diproses 🎉',
            subtitle: 'Cek di laman Pesanan sekarang!',
            isRead: false,
          ),
          const SizedBox(height: 14),
          _NotificationCard(
            title: 'Pesanan Anda sudah sampai!',
            subtitle: 'Anda bisa cek kelengkapan Pesanan',
            isRead: true,
          ),
          const SizedBox(height: 14),
          _NotificationCard(
            title: 'Promo Spesial! Diskon 20% untuk semua buah',
            subtitle: 'Buruan belanja sekarang sebelum kehabisan',
            isRead: true,
          ),
        ],
      ),
    );
  }
}

/// Reusable Notification Card Widget
class _NotificationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isRead;

  const _NotificationCard({
    required this.title,
    required this.subtitle,
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(
        minHeight: 80, 
      ),
      decoration: BoxDecoration(
        color: isRead ? AppColors.white : AppColors.mintGreen,
        borderRadius: BorderRadius.circular(10),
        border: isRead ? Border.all(color: AppColors.border) : null,
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: AppTextStyles.h5.copyWith(fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// 