import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

final myLogger = Logger();

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(ProviderScope(overrides: [
    // override the previous value with the new object
    sharedPreferencesProvider.overrideWithValue(sharedPreferences),
  ], child: const MyApp()));
}
