import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nearby_chat/core/theme/app_theme.dart';

void main() {
  group('AppTheme colors', () {
    test('primary color is WhatsApp green', () {
      expect(AppTheme.primary, const Color(0xFF075E54));
    });

    test('accent color is WhatsApp teal', () {
      expect(AppTheme.accent, const Color(0xFF128C7E));
    });

    test('chatBackground is WhatsApp beige', () {
      expect(AppTheme.chatBackground, const Color(0xFFECE5DD));
    });

    test('sentBubble is light green', () {
      expect(AppTheme.sentBubble, const Color(0xFFDCF8C6));
    });

    test('receivedBubble is white', () {
      expect(AppTheme.receivedBubble, Colors.white);
    });

    test('checkmarkBlue is WhatsApp blue', () {
      expect(AppTheme.checkmarkBlue, const Color(0xFF34B7F1));
    });
  });

  group('AppTheme.lightTheme', () {
    late ThemeData theme;

    setUp(() {
      theme = AppTheme.lightTheme;
    });

    test('returns a ThemeData', () {
      expect(theme, isA<ThemeData>());
    });

    test('primaryColor matches primary constant', () {
      expect(theme.primaryColor, AppTheme.primary);
    });

    test('colorScheme primary matches primary constant', () {
      expect(theme.colorScheme.primary, AppTheme.primary);
    });

    test('colorScheme secondary matches accent constant', () {
      expect(theme.colorScheme.secondary, AppTheme.accent);
    });

    test('scaffoldBackgroundColor matches chatBackground', () {
      expect(theme.scaffoldBackgroundColor, AppTheme.chatBackground);
    });

    test('uses Material 3', () {
      expect(theme.useMaterial3, isTrue);
    });

    test('appBarTheme backgroundColor matches primary', () {
      expect(theme.appBarTheme.backgroundColor, AppTheme.primary);
    });

    test('appBarTheme elevation is 0', () {
      expect(theme.appBarTheme.elevation, 0);
    });
  });

  group('AppTheme.darkTheme', () {
    late ThemeData theme;

    setUp(() {
      theme = AppTheme.darkTheme;
    });

    test('returns a ThemeData', () {
      expect(theme, isA<ThemeData>());
    });

    test('primaryColor matches primary constant', () {
      expect(theme.primaryColor, AppTheme.primary);
    });

    test('colorScheme primary matches accent constant', () {
      expect(theme.colorScheme.primary, AppTheme.accent);
    });

    test('colorScheme secondary matches accent constant', () {
      expect(theme.colorScheme.secondary, AppTheme.accent);
    });

    test('brightness is dark', () {
      expect(theme.brightness, Brightness.dark);
    });
  });
}
