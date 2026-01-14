import 'package:flutter/material.dart';

/// App color palette
/// Centralized color management untuk konsistensi UI
class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF25B976);
  static const Color primaryLight = Color(0xFF4FD399);
  static const Color primaryDark = Color(0xFF1A8A57);
  
  // Secondary Colors
  static const Color secondary = Color(0xFF777777);
  static const Color secondaryLight = Color(0xFF999999);
  static const Color secondaryDark = Color(0xFF555555);
  
  // Neutral Colors
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF333333);
  static const Color lightGrey = Color(0xFFE9ECEF);
  static const Color mediumGrey = Color(0xFFCDCDCD);
  
  // Background Colors
  static const Color background = Color(0xFFFCFCFC);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color paleGreen = Color(0xFFF2F5E2);
  static const Color mintGreen = Color(0xFFE8FFF6);
  
  // Status Colors
  static const Color success = primary;
  static const Color warning = Color(0xFFE9AB0E);
  static const Color error = Color(0xFFE63232);
  static const Color brightRed = Color(0xFFDC3A3A);
  static const Color info = Color(0xFF2196F3);
  
  // Text Colors
  static const Color textPrimary = black;
  static const Color textSecondary = secondary;
  static const Color textLight = mediumGrey;
  static const Color textWhite = white;
  
  // Border & Divider
  static const Color border = lightGrey;
  static const Color divider = Color(0xFFEBEBEB);
  
  // Gradient
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryDark],
  );
  
  static const LinearGradient successGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, Color(0xFF1A8A57)],
  );
  
  // Shadow Colors
  static Color shadowLight = black.withValues(alpha: 0.05);
  static Color shadowMedium = black.withValues(alpha: 0.1);
  static Color shadowDark = black.withValues(alpha: 0.15);
}