import 'package:flutter/material.dart';
import 'package:pokemon_app/app/app_widget.dart';
import 'package:pokemon_app/app/di/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const AppWidget());
}

