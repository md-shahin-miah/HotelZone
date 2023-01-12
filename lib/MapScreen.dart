import 'package:flutter/material.dart';

import 'component/ComponentItem.dart';
import 'component/HotelCard.dart';
import 'conf/app_config.dart';
//
class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaqueryheight = MediaQuery.of(context).size.height;
    var mediaquerywidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: mediaquerywidth,
          height: mediaqueryheight / 1.4,
          child: Image.asset(
            "assets/images/map_image.png",
            fit: BoxFit.fill,
          ),
        ),
       // Positioned(bottom: 0, left: 0, right: 0, child: HotelCard(availableHotels: ,))
      ],
    );
  }
}
