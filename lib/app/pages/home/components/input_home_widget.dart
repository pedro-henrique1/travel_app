import 'package:flutter/material.dart';

class InputHome extends StatelessWidget {
  const InputHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            // padding: const EdgeInsets.only(top: 90, left: 20),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
          Padding(
            padding: EdgeInsets.only(top: 70, left: 20),
            child: TextField(
              style:  TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_on_outlined,
                      color: Color.fromRGBO(146, 169, 189, 10), size: 30),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide( color: Color.fromRGBO(146, 169, 189, 10), width: 2.0),
                  ),
                  hintText: 'Local',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  )),

            ),
          ),
        ]));
  }
}
