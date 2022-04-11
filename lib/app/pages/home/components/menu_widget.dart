import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.8,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 120,
            padding: const EdgeInsets.only(right:  20.0),
            child: ElevatedButton(
              onPressed: () {
                print("oi");
              },
              child: const Text("Place"),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 28, 185, 112),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  textStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500)),
            ),
          ),
          Container(
              width: 120,
              padding: const EdgeInsets.only(right:  20.0),
              child: ElevatedButton(
                  onPressed: () {
                    print("oi");
                  },
                  child: const Text("Place",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromRGBO(97, 190, 147, 10))),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(234, 249, 241, 1.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ))),
          Container(
              width: 120,
              padding: const EdgeInsets.only(right:  20.0),
              child: ElevatedButton(
                  onPressed: () {
                    print("oi");
                  },
                  child: const Text("Place",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromRGBO(97, 190, 147, 10))),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(234, 249, 241, 1.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ))),
          Container(
              width: 120,
              padding: const EdgeInsets.only(right:  20.0),
              child: ElevatedButton(
                  onPressed: () {
                    print("oi");
                  },
                  child: const Text("Pace",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromRGBO(97, 190, 147, 10))),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(234, 249, 241, 1.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ))),
        ],
      ),
    );
  }
}
