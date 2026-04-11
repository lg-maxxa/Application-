import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nearby_chat/app.dart';
import 'package:nearby_chat/main.dart';

void main() {
  group('bootstrap', () {
    test('runs configure before app startup', () async {
      var configureRan = false;
      var appRan = false;

      await bootstrap(
        configure: () async {
          configureRan = true;
        },
        appRunner: (app) {
          expect(configureRan, isTrue);
          appRan = true;
          expect(app, isA<NearbyChatApp>());
        },
      );

      expect(configureRan, isTrue);
      expect(appRan, isTrue);
    });

    test('does not run app when dependency setup fails', () async {
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
