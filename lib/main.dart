import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:travel_app/app/app_widget.dart';
import 'package:travel_app/app/screen/home/home_page.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  log('o log', error: DotEnv().isInitialized);
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const AppWidget(),
      '/home': (context) => const HomePage(),
      // '/three': (context) => ThreeScreen(),
    },
  ));
}
