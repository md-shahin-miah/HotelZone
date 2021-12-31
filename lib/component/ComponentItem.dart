
import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';

class ComponentItem extends StatelessWidget {
  IconData iconData;
  String string = "";
  bool isActive;

  ComponentItem({required this.iconData, required this.string,required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
          color:  isActive?kCyanSecondaryColor:Colors.transparent,
          borderRadius: BorderRadius.circular(5)),

      child: Expanded(
        child: Row(
          children: [
            Icon(
              iconData,
              color:  isActive?Colors.white: kCyanSecondaryColor,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              string,
              style: TextStyle( color:  isActive?Colors.white: kCyanSecondaryColor,),
            )
          ],
        ),
      ),
    );
  }
}