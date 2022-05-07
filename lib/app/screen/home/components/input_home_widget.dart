// ignore_for_file: constant_identifier_names, unnecessary_type_check

import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';

class InputHome extends StatefulWidget {
  InputHome({Key? key}) : super(key: key);

  @override
  State<InputHome> createState() => _InputHomeState();
}

class _InputHomeState extends State<InputHome> {
  String location = "Search Location";
  String ApiKey = "AIzaSyBj39LC9wI_IQudnMFCKXYFdNSSfV0DjLs";

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
                apiKey: ApiKey,
                mode: Mode.fullscreen,
                types: [],
                strictbounds: false,
                components: [Component(Component.country, 'us')],
                //google_map_webservice package
                onError: (error) {
                  // print('Error in Place search = $error');

                  if (error is PlacesAutocompleteResponse) {
                    print(error.errorMessage);
                  }
                });

            // if (place != null) {
            //   setState(() {
            //     print(location = place.description.toString());
            //   });
            //
            //   //form google_maps_webservice package
            //   final plist = GoogleMapsPlaces(
            //     apiKey: googleApikey,
            //     apiHeaders: await GoogleApiHeaders().getHeaders(),
            //     //from google_api_headers package
            //   );
            //   String placeid = place.placeId ?? "0";
            //   final detail = await plist.getDetailsByPlaceId(placeid);
            //   final geometry = detail.result.geometry!;
            //   final lat = geometry.location.lat;
            //   final lang = geometry.location.lng;
            //   var newlatlang = LatLng(lat, lang);
            //
            //   //move map camera to selected place with animation
            //   mapController?.animateCamera(CameraUpdate.newCameraPosition(
            //       CameraPosition(target: newlatlang, zoom: 17)));
            // }
            // }
            // ;
            Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                    child: Container(
                        padding: EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width - 40,
                        child: ListTile(
                          title: Text(
                            location,
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: Icon(Icons.search),
                          dense: true,
                        ))));
          }))
    ]));
  }
}
