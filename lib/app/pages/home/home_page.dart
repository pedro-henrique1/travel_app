import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/app/pages/home/components/carrousel_home_widget.dart';
import 'package:travel_app/app/pages/home/components/menu_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 90, left: 20),
            child: Row(children: const [
              Icon(
                Icons.location_on_outlined,
                color: Color.fromRGBO(146, 169, 189, 10),
                size: 30,
              ),
              Text("cidade, pais",
                  style: TextStyle(
                      color: Color.fromRGBO(124, 153, 172, 10), fontSize: 20))
            ])),
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
          child: MenuHome(),
        ),
        Container(
          child: CarrouselHome(),
        )
      ],
    ));
  }
}
