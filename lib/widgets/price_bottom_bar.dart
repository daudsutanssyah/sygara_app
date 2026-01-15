import 'package:flutter/material.dart';
import 'package:sygara_app/themes/app_colors.dart';
import 'package:sygara_app/themes/app_text_styles.dart';

class PriceBottomBar extends StatelessWidget {
  final String priceLabel;
  final String priceValue;
  final String buttonText;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? buttonBackgroundColor;
  final Color? buttonTextColor;

  const PriceBottomBar({
    super.key,
    required this.priceLabel,
    required this.priceValue,
    required this.buttonText,
    required this.onPressed,
    this.backgroundColor,
    this.buttonBackgroundColor,
    this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width for responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 360;

    // Responsive button width
    final buttonWidth = isSmallScreen ? 140.0 : 176.0;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primary,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowMedium,
            offset: const Offset(0, -8),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 16 : 20,
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Price Section
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      priceLabel,
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.white,
                        fontSize: isSmallScreen ? 12 : 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      priceValue,
                      style: AppTextStyles.h2.copyWith(
                        color: AppColors.white,
                        fontSize: isSmallScreen ? 20 : 24,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              // Button Section
              SizedBox(
                width: buttonWidth,
                height: 45,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonBackgroundColor ?? AppColors.white,
                    foregroundColor: buttonTextColor ?? AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: isSmallScreen ? 12 : 16,
                    ),
                  ),
                  child: Text(
                    buttonText,
                    style: AppTextStyles.h5.copyWith(
                      color: buttonTextColor ?? AppColors.primary,
                      fontSize: isSmallScreen ? 14 : 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
