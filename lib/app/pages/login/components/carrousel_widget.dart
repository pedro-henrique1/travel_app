import 'package:flutter/material.dart';

class Carrousel extends StatelessWidget {
  Carrousel({Key? key}) : super(key: key);
  List<String> images = [
    "https://www.getillustrations.com/packs/stories-vector-illustrations-for-websites/scenes/_1x/travel%20_%20%20travelling,%20airport,%20luggage,%20baggage,%20woman,%20female_md.png",
    "https://www.getillustrations.com/packs/flat-vector-illustrations-for-websites/scenes/_1x/travel%20_%20backpack,%20rucksack,%20navigation,%20location,%20pointer,%20left,%20right_md.png",
    "https://www.getillustrations.com/packs/humanic-character-illustrations-and-scenes-vector-pack/characters/_1x/travel,%20children,%20character%20builder%20_%20child,%20imagination,%20explore,%20discover_md.png",
    "https://www.getillustrations.com/packs/zest-modern-illustrations/scenes/_1x/travel%20_%20travelling,%20backpack,%20luggage,%20baggage,%20map,%20navigation_md.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PageView.builder(
            itemCount: images.length,
            pageSnapping: true,
            itemBuilder: (context, pagePosition) {
              return Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Image.network(images[pagePosition]));
            }));
  }
}
