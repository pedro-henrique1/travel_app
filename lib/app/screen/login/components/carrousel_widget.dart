import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carrousel extends StatefulWidget {
  Carrousel({Key? key}) : super(key: key);

  @override
  State<Carrousel> createState() => _CarrouselState();
}

class _CarrouselState extends State<Carrousel> {
  List<String> imageList = [
    "https://www.getillustrations.com/packs/stories-vector-illustrations-for-websites/scenes/_1x/travel%20_%20%20travelling,%20airport,%20luggage,%20baggage,%20woman,%20female_md.png",
    "https://www.getillustrations.com/packs/flat-vector-illustrations-for-websites/scenes/_1x/travel%20_%20backpack,%20rucksack,%20navigation,%20location,%20pointer,%20left,%20right_md.png",
    "https://www.getillustrations.com/packs/humanic-character-illustrations-and-scenes-vector-pack/characters/_1x/travel,%20children,%20character%20builder%20_%20child,%20imagination,%20explore,%20discover_md.png",
    "https://www.getillustrations.com/packs/zest-modern-illustrations/scenes/_1x/travel%20_%20travelling,%20backpack,%20luggage,%20baggage,%20map,%20navigation_md.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: 400,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
        itemBuilder: (context, i, id){
          return GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageList[i],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
