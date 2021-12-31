import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/HotelDetailsScreen.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';
import 'package:hotelszone_flutter/model/HotelResponse.dart';

import 'RatingBar.dart';

class HotelCard extends StatelessWidget {
  late AvailableHotels availableHotels;

  HotelCard({required this.availableHotels});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(() => HotelDetailsScreen(availableHotels: availableHotels,));
        },
        child: Card(
            elevation: 0.5,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Stack(
              children: [
                ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                      colors: <Color>[
                        Colors.black.withOpacity(1.0),
                        Colors.black.withOpacity(1.0),
                        Colors.black.withOpacity(0.05),
                        Colors.white.withOpacity(0.05),
                        // <-- change this opacity
                        // Colors.transparent // <-- you might need this if you want full transparency at the edge
                      ],
                      stops: [
                        0.2,
                        0.0,
                        0.9,
                        1
                      ], //<-- the gradient is interpolated, and these are where the colors above go into effect (that's why there are two colors repeated)
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(availableHotels.image))),
                    padding: EdgeInsets.all(12),
                    height: 220,
                  ),
                ),
                Positioned(
                    child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12),
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        availableHotels.name,
                        maxLines: 2,
                        style: TextStyle(fontSize: 24, color: kPrimaryColor),
                      ),
                      RatingBar(num: availableHotels.stars),
                      Spacer(),
                      Text(
                        "form",
                        style: TextStyle(color: kCyanSecondaryColor),
                      ),
                      Text(availableHotels.minPrice.amount,
                          style: TextStyle(fontSize: 24, color: kPrimaryColor)),
                      Text(
                        "For 2 night".toUpperCase(),
                        style: TextStyle(color: kCyanSecondaryColor),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ))
              ],
            )));
  }
}
