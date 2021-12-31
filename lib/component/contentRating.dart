
import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';

class ContentRating extends StatelessWidget {
  const ContentRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
        width: 76,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(4),
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "2",
              style: TextStyle(color: kPrimaryColor, fontSize: 16,fontWeight: FontWeight.w800),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.star,
              color: kCyanSecondaryColor,
            ),
          ],
        ),)

    );
  }
}
