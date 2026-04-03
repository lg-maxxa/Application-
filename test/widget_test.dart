import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nearby_chat/app.dart';
import 'package:nearby_chat/core/theme/app_theme.dart';

void main() {
  group('NearbyChatApp', () {
    testWidgets('builds without error', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      // MaterialApp.router still creates a MaterialApp internally
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('displays loading screen at initial route', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      expect(find.text('NearbyChat - Loading...'), findsOneWidget);
    });

    testWidgets('applies light theme with correct primary color', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      final materialApp =
          tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(materialApp.theme?.primaryColor, AppTheme.primary);
    });

    testWidgets('applies dark theme', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      final materialApp =
          tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(materialApp.darkTheme, isNotNull);
      expect(materialApp.darkTheme?.brightness, Brightness.dark);
    });

    testWidgets('scaffold is centered with loading text', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      expect(find.byType(Center), findsWidgets);
      expect(find.byType(Text), findsWidgets);
    });

    testWidgets('debug banner is disabled', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      // When debugShowCheckedModeBanner is false, no debug banner overlay
      expect(find.byType(CheckedModeBanner), findsNothing);
    });

    testWidgets('has a Scaffold at root route', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      expect(find.byType(Scaffold), findsWidgets);
    });
  });
}
