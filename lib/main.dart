import 'package:flutter/material.dart';
import 'app.dart';
import 'injection.dart';

void main() async {
  // Ensure Flutter bindings are initialized before calling native code
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize P2P and Database dependencies
  await configureDependencies();
  
  runApp(const NearbyChatApp());
}
