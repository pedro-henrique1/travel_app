// ignore_for_file: constant_identifier_names, unnecessary_type_check

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';

class InputHome extends StatefulWidget {
  const InputHome({Key? key}) : super(key: key);

  @override
  State<InputHome> createState() => _InputHomeState();
}

class _InputHomeState extends State<InputHome> {
  String location = "Search Location";

  // final TextEditingController _controllerCidade = ApiHttpRepository()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          margin: const EdgeInsets.only(right: 20),
          child: InkWell(onTap: () async {
            var place = await PlacesAutocomplete.show(
                context: context,
                apiKey: dotenv.get('APIGOOGLEKEY'),
                mode: Mode.overlay,
                types: [],
                strictbounds: false,
                components: [Component(Component.country, 'br')],
                //google_map_webservice package
                onError: (error) {
                  // print('Error in Place search = $error');

                  if (error is PlacesAutocompleteResponse) {
                    print(error.errorMessage);
                  }
                });
            print(Prediction());

            Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width - 40,
                        child: ListTile(
                          title: Text(
                            location,
                            style: const TextStyle(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.search),
                          dense: true,
                        ))));
          }))
    ]));
  }
}
