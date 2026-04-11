import 'package:get_it/get_it.dart';
import 'package:flutter/foundation.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  try {
    // Dependency graph setup can be added here when services are introduced.
  } catch (error, stackTrace) {
    debugPrint('Dependency initialization failed: $error');
    debugPrint('$stackTrace');
  }
}
