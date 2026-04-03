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
    return ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme.light(
        primary: primary,
        secondary: accent,
        surface: chatBackground,
      ),
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      scaffoldBackgroundColor: chatBackground,
      useMaterial3: true,
    );
  }
  
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      primaryColor: primary,
      colorScheme: ColorScheme.dark(
        primary: accent,
        secondary: accent,
      ),
    );
  }
}