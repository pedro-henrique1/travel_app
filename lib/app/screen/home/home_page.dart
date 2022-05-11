import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/app/screen/home/components/carrousel_home_widget.dart';
import 'package:travel_app/app/screen/home/components/input_home_widget.dart';
import 'package:travel_app/app/screen/home/components/menu_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // InputHome(),
        Container(
            margin: const EdgeInsets.only(right: 20, top: 30),
            child: InputHome()),
        Container(
          margin: const EdgeInsets.only(top: 150, left: 20),
          child: Text(
            "Where do you\nlike to go? 👏",
            style: GoogleFonts.ubuntu(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 44)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 290, left: 20),
          child: const MenuHome(),
        ),
        Container(
          child: CarrouselHome(),
        )
      ],
    ));
  }
}