import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nearby_chat/app.dart';
import 'package:nearby_chat/main.dart';

void main() {
  group('bootstrap', () {
    testWidgets('initializes bindings before configure and runs app', (
      tester,
    ) async {
      var configureSawInitializedBinding = false;
      var appRan = false;

      await bootstrap(
        configure: () async {
          configureSawInitializedBinding = WidgetsBinding.instance != null;
        },
        appRunner: (app) {
          appRan = true;
          expect(app, isA<NearbyChatApp>());
        },
      );

      expect(configureSawInitializedBinding, isTrue);
      expect(appRan, isTrue);
    });

    testWidgets('does not run app when dependency setup fails', (tester) async {
      var appRan = false;

      await expectLater(
        bootstrap(
          configure: () async {
            throw StateError('Dependency setup failed');
          },
          appRunner: (_) {
            appRan = true;
          },
        ),
        throwsA(isA<StateError>()),
      );

      expect(appRan, isFalse);
    });
  });
}
