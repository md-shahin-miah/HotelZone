import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';

class PopularDestinationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaqueryheight = MediaQuery.of(context).size.height;
    var mediaquerywidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          alignment: Alignment.centerLeft,
          child: Text(
            "Popular Destinations",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: mediaqueryheight / 6,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int index) {
              return Container(
                margin: EdgeInsets.all(5),
                height: mediaqueryheight / 6.6,
                width: mediaquerywidth / 2.5,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: FadeInImage.assetNetwork(
                            width: double.infinity,
                            height: double.infinity,
                            placeholder:
                                'assets/images/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position.jpg',
                            image:
                                "https://photos.mandarinoriental.com/is/image/MandarinOriental/paris-2017-home?wid=2880&hei=1280&fmt=jpeg&crop=9,336,2699,1200&anchor=1358,936&qlt=75,0&fit=wrap&op_sharpen=0&resMode=sharp2&op_usm=0,0,0,0&iccEmbed=0&printRes=72",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: mediaqueryheight / 6.6,
                            width: mediaquerywidth / 2.5,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                            ),
                            child: Text(
                              "Paris",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
