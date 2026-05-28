import 'dart:ffi' show DynamicLibrary;
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqlite3/open.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:uni_links_desktop/uni_links_desktop.dart';

import 'app.dart';
import 'client/shared_pref_client.dart';

final myLogger = Logger();

Future<void> main() async {
  if (Platform.isWindows || Platform.isLinux) {
    if (Platform.isWindows) {
      open.overrideFor(OperatingSystem.windows, () {
        return DynamicLibrary.open('sqlite3.dll');
      });
      sqlite3.openInMemory().dispose();
    } else {
      sqfliteFfiInit();
    }

    // Change the default factory
    databaseFactory = databaseFactoryFfi;
  }
  WidgetsFlutterBinding.ensureInitialized();
  
  if (Platform.isWindows) {
    registerProtocol('palinissaya');
  }

  await SharedPreferenceClient.init();

  runApp(const ProviderScope(child: MyApp()));
}
