import 'package:flutter/material.dart';

class HotelZone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hotelzone",style: TextStyle(fontFamily: "Rubik-ExtraBoldItalic"),),
        ),
        body: Center(
          child: Text("Hotelzone",style: TextStyle(fontFamily: "Rubik-Bold",fontStyle: FontStyle.italic),),
        ),
      ),
    );
  }
}
