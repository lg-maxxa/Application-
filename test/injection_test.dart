import 'package:flutter_test/flutter_test.dart';
import 'package:nearby_chat/injection.dart';

void main() {
  group('configureDependencies', () {
    test('completes successfully', () async {
      await expectLater(configureDependencies(), completes);
    });
  });
}
