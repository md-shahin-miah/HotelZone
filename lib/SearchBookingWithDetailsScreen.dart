import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';

class SearchBookingWithDetailsScreen extends StatelessWidget {
  const SearchBookingWithDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackgroundSearchBookingWithDetails,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kPrimaryColor
       , title: Text("Search  for booking", style: TextStyle(
          fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16)),),
      body:
      SafeArea(
        child:    Column(

          children: [

            Card(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              elevation: 0.5,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black26,
                    ),

                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black26),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius:
                      BorderRadius.all(Radius.circular(4.0)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 16.0)),
              ),
            ),
            Card(

              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              elevation: 0.5,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.my_library_books,
                      color: Colors.black26,
                    ),

                    hintText: "Booking id",
                    hintStyle: TextStyle(color: Colors.black26),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius:
                      BorderRadius.all(Radius.circular(4.0)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 16.0)),
              ),
            ),

            Container(

              height: MediaQuery.of(context).size.height/20,
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: double.infinity,
              child: RaisedButton(
                  color: kRedPrimaryColor,
                  child: Text(
                    "View Bookings",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  onPressed: () {}),
            ),


          ],
        ),
      )


    );
  }
}
