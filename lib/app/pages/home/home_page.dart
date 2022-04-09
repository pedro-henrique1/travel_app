import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/app/pages/home/components/carrousel_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: Text(
              "Get Culture Experience  🤞",
              style: GoogleFonts.ubuntu(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 48)),
              textAlign: TextAlign.center,
            ),
          ),
          Carrousel(),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 30.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get Started"),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 43, 192, 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  fixedSize: const Size(360, 80),
                  // minimumSize: const Size.fromHeight(70),
                  textStyle: const TextStyle(
                      fontSize: 24, fontStyle: FontStyle.normal)),
            ),
          )
        ],
        // child: Text('Travel App'),
      ),
    );
  }
}
