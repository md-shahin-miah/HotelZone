import 'package:flutter/material.dart';

class CommonWidgets{

  static  ListView horizontalList(int n) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        n,
            (i) => Icon(
          Icons.star,
          color: Colors.red,
          size: 30,
        ),
      ),
    );
  }


}