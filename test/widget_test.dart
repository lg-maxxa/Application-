import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nearby_chat/app.dart';
import 'package:nearby_chat/core/theme/app_theme.dart';

void main() {
  group('NearbyChatApp', () {
    testWidgets('builds without error', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('renders modern home hero and quick actions', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      expect(find.text('Connect. Chat. Share.'), findsOneWidget);
      expect(find.text('Quick actions'), findsOneWidget);
      expect(find.byType(ActionChip), findsNWidgets(3));
      expect(find.byType(NavigationBar), findsOneWidget);
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

    testWidgets('start session button shows feedback snackbar', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      await tester.tap(find.text('Start Nearby Session'));
      await tester.pumpAndSettle();
      expect(find.text('Starting secure nearby session...'), findsOneWidget);
    });

    testWidgets('private mode switch toggles state', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();

      final switchFinder = find.byType(Switch);
      expect(switchFinder, findsOneWidget);
      final initial = tester.widget<Switch>(switchFinder);
      expect(initial.value, isTrue);

      await tester.tap(find.text('Private Mode'));
      await tester.pumpAndSettle();

      final toggled = tester.widget<Switch>(switchFinder);
      expect(toggled.value, isFalse);
    });

    testWidgets('debug banner is disabled', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      expect(find.byType(CheckedModeBanner), findsNothing);
    });

    testWidgets('has a Scaffold at root route', (tester) async {
      await tester.pumpWidget(const NearbyChatApp());
      await tester.pumpAndSettle();
      expect(find.byType(Scaffold), findsWidgets);
    });
  });
}
