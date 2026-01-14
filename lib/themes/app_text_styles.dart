import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// App text styles
/// Centralized typography management
class AppTextStyles {
  // Base text style
  static TextStyle get _baseStyle => GoogleFonts.outfit();

  // ============================================
  // Heading Styles
  // ============================================

  /// H1 - Extra Large heading (32px, Bold)
  static TextStyle get h1 => _baseStyle.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  /// H2 - Large heading (24px, Bold)
  static TextStyle get h2 => _baseStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  /// H3 - Medium heading (20px, SemiBold)
  static TextStyle get h3 => _baseStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  /// H4 - Small heading (18px, SemiBold)
  static TextStyle get h4 => _baseStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  /// H5 - Extra small heading (16px, SemiBold)
  static TextStyle get h5 => _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  // ============================================
  // Body Text Styles
  // ============================================

  /// Body Large (16px, Regular)
  static TextStyle get bodyLarge => _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  /// Body Medium (14px, Regular)
  static TextStyle get bodyMedium => _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  /// Body Small (12px, Regular)
  static TextStyle get bodySmall => _baseStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  // ============================================
  // Specific Styles (Backward Compatibility)
  // ============================================

  /// Title text style (16px, SemiBold, Black)
  static TextStyle get title => _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  /// Black text style
  static TextStyle get black => _baseStyle.copyWith(color: AppColors.black);

  /// White text style (16px, Regular)
  static TextStyle get white => _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  /// Grey text style (20.93px, Medium)
  static TextStyle get grey => _baseStyle.copyWith(
    fontSize: 20.93,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );

  /// Secondary text style (16px, Regular)
  static TextStyle get secondary => _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );

  /// Primary text style (14px, Medium)
  static TextStyle get primary => _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  /// Yellow/Warning text style (14px, Medium)
  static TextStyle get yellow => _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.warning,
  );

  /// Error/Red text style (14px, Medium)
  static TextStyle get error => _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.error,
  );

  // ============================================
  // Button Text Styles
  // ============================================

  /// Button Large text (16px, SemiBold)
  static TextStyle get buttonLarge => _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  /// Button Medium text (14px, SemiBold)
  static TextStyle get buttonMedium => _baseStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  /// Button Small text (12px, SemiBold)
  static TextStyle get buttonSmall => _baseStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  // ============================================
  // Caption & Label Styles
  // ============================================

  /// Caption (12px, Regular, Light color)
  static TextStyle get caption => _baseStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Label (14px, Medium, Secondary color)
  static TextStyle get label => _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  /// Overline (10px, Medium, Uppercase)
  static TextStyle get overline => _baseStyle.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    letterSpacing: 1.5,
  );

  // ============================================
  // Utility Methods
  // ============================================

  /// Apply custom color to any style
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  /// Apply custom weight to any style
  static TextStyle withWeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }

  /// Apply custom size to any style
  static TextStyle withSize(TextStyle style, double size) {
    return style.copyWith(fontSize: size);
  }
}
