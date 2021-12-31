import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/BookingCancellationScreen.dart';
import 'package:hotelszone_flutter/BookingDetails.dart';

import 'conf/app_config.dart';

class SearchForBookingScreen extends StatefulWidget {
  const SearchForBookingScreen({Key? key}) : super(key: key);

  @override
  _SearchForBookingScreenState createState() => _SearchForBookingScreenState();
}

class _SearchForBookingScreenState extends State<SearchForBookingScreen> {
  List<BookingDetails> bookingListDetails = [];

  @override
  void initState() {
    // TODO: implement initState

    BookingDetails bookingDetails = BookingDetails("Radisson Blue", "2820 Coburn Hollow Road, Peoria 1L", 3,
        "Sat 19 July, 2021 - Sun 20 Jul, 2021", "Booking Confirmed");
    BookingDetails bookingDetails1 = BookingDetails("Royal Plaza", "2820 Coburn Hollow Road, Peoria 1L", 4,
        "Sat 19 July, 2021 - Sun 20 Jul, 2021", "Booking Canceled");
    BookingDetails bookingDetails2 = BookingDetails("Phoenical Hotel", "2820 Coburn Hollow Road, Peoria 1L", 5,
        "Sat 19 July, 2021 - Sun 20 Jul, 2021", "Booking Confirmed");

    setState(() {
      bookingListDetails.add(bookingDetails);
      bookingListDetails.add(bookingDetails1);
      bookingListDetails.add(bookingDetails2);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBackgroundSearchBookingWithDetails,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: kPrimaryColor,
          title: Text("Search for Bookings",
              style: TextStyle(fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16)),
        ),
        body: SafeArea(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            bookingListDetails.length,
            (i) =>
              InkWell(
                onTap: (){
                  Get.to(()=>BookingCancellationScreen());
                },
                child:   Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      border: Border.all(width:1,color: bookingListDetails[i].bookingStatus == "Booking Confirmed"
                          ? Colors.green
                          : kRedPrimaryColor)
                  ),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        child: Text('${bookingListDetails[i].hotelName}',
                            style: TextStyle(
                                fontFamily: "Rubik", color: kPrimaryColor, fontWeight: FontWeight.normal, fontSize: 20)),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('${bookingListDetails[i].location}',
                            style: TextStyle(
                                fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 30,
                        width: double.infinity,
                        child: _horizontalList(bookingListDetails[i].rating),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 25),
                        child: Text('${bookingListDetails[i].duration}',
                            style: TextStyle(
                                fontFamily: "Rubik", color: colorIcon, fontWeight: FontWeight.normal, fontSize: 14)),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              bookingListDetails[i].bookingStatus == "Booking Confirmed"
                                  ? Icon(Icons.check_circle)
                                  : Icon(
                                Icons.clear,
                                color: kRedPrimaryColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Text('${bookingListDetails[i].bookingStatus}',
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        color: bookingListDetails[i].bookingStatus == "Booking Confirmed"
                                            ? kPrimaryColor
                                            : kRedPrimaryColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16)),
                              ),
                            ],
                          ))
                    ],
                  ),
                )
              )

          ),
        )));
  }

  ListView _horizontalList(int n) {
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
