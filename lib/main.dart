import 'package:flutter/material.dart';
import 'package:travel_app/app/app_widget.dart';
import 'package:travel_app/app/screen/home/home_page.dart';

// AppWidget()
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) =>  const AppWidget(),
      '/home': (context) => const HomePage(),
      // '/three': (context) => ThreeScreen(),
    },
  ));
}
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // O initialRoute é a primeira rota que é aberta no app
//       initialRoute: '/',
//       routes: {
//         '/': (context) =>  AppWidget(),
//         '/home': (context) => HomePage(),
//         // '/three': (context) => ThreeScreen(),
//       },
//     );
//   }
// }
