import 'package:flutter/material.dart';
import 'package:travel_app/app/pages/home/home_page.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
