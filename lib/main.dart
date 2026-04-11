import 'package:flutter/material.dart';
import 'app.dart';
import 'injection.dart';

Future<void> bootstrap({
  Future<void> Function()? configure,
  void Function(Widget app)? appRunner,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  await (configure ?? configureDependencies)();

  (appRunner ?? runApp)(const NearbyChatApp());
}

Future<void> main() async => bootstrap();
