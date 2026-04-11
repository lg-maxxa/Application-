import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  // WhatsApp colors
  static const Color primary = Color(0xFF075E54);
  static const Color accent = Color(0xFF128C7E);
  static const Color chatBackground = Color(0xFFECE5DD);
  static const Color sentBubble = Color(0xFFDCF8C6);
  static const Color receivedBubble = Colors.white;
  static const Color checkmarkBlue = Color(0xFF34B7F1);
  
  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
      primary: primary,
      secondary: accent,
      surface: Colors.white,
    );
    return ThemeData(
      primaryColor: primary,
      colorScheme: colorScheme,
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xFFF4F7F8),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xFF0E2E30),
        elevation: 0,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: primary,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.white,
        indicatorColor: primary.withValues(alpha: 0.12),
        labelTextStyle: WidgetStateProperty.all(
          const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
  
  static ThemeData get darkTheme {
    return ThemeData.dark(useMaterial3: true).copyWith(
      primaryColor: primary,
      scaffoldBackgroundColor: const Color(0xFF0D1616),
      colorScheme: const ColorScheme.dark(
        primary: accent,
        secondary: accent,
        surface: Color(0xFF111B1B),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      cardTheme: CardThemeData(
        color: const Color(0xFF111B1B),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
    );
  }
}
