import 'package:flutter/material.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowLight,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.asset(
              'assets/img-banner.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // Fallback gradient if image not found
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AppColors.primaryLight, AppColors.primary],
                    ),
                  ),
                );
              },
            ),

            // Content Overlay
            Positioned(
              top: 22,
              left: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Banner Title
                  Text(
                    'Produk Segar\nuntuk Keluarga!',
                    style: AppTextStyles.h4.copyWith(
                      color: AppColors.primary,
                      height: 1.3,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // CTA Button
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Ink(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withValues(alpha: 0.3),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Container(
                          width: 145,
                          height: 36,
                          alignment: Alignment.center,
                          child: Text(
                            'Belanja Sekarang!',
                            style: AppTextStyles.buttonSmall.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
