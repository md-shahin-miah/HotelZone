import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/MainScreen.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';
//
class BookingConfirmationScreen extends StatelessWidget {
  String cityName = "Paris";
  String hotelName = "Radisson Blue";
  String addressOfBookedHotel = "2820 Coburn Hollow Road, Peopria 1L";
  String duration = "1 Night stay";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: kPrimaryColor,
          title: Text("Search  for booking", style: TextStyle(
              fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16))

        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: MediaQuery.of(context).size.height/25,
                    ),
                    Container(

                      child: Text('You\'re Going to $cityName',
                          style: TextStyle(
                              fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Booking Confirmed',
                          style: TextStyle(
                              fontFamily: "Rubik", color: kPrimaryColor, fontWeight: FontWeight.normal, fontSize: 28)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/20,
                        ),
                        Container(

                          child: Text('$hotelName',
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text('$addressOfBookedHotel',
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                        SizedBox(
                          height: 30,
                          width: double.infinity,
                          child: _horizontalList(4),
                        )
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/30,
                    ),
                    Container(

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 0),
                            child: Icon(
                              Icons.nights_stay,
                              color: colorIcon,
                              size: 16,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 5),
                            child: Text(' $duration',
                                style: TextStyle(
                                    fontFamily: "Rubik",
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 30),
                            child: Icon(
                              Icons.person,
                              color: colorIcon,
                              size: 16,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 5),
                            child: Text(' 3',
                                style: TextStyle(
                                    fontFamily: "Rubik",
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 30),
                            child: Icon(
                              Icons.airline_seat_individual_suite,
                              color: colorIcon,
                              size: 16,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 5),
                            child: Text(' 1',
                                style: TextStyle(
                                    fontFamily: "Rubik",
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 0),
                      child: Text('Sat 19 Jul,2021 - Sun 20 Jul,2021',
                          style: TextStyle(
                              fontFamily: "Rubik", color: kPrimaryColor, fontWeight: FontWeight.normal, fontSize: 22)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/20,
                    ),

                    Container(
                      child: Text('Lead Guest',
                          style: TextStyle(
                              fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 0),
                      child: Text('James McAvoy',
                          style: TextStyle(
                              fontFamily: "Rubik", color: kPrimaryColor, fontWeight: FontWeight.normal, fontSize: 22)),
                    ),
                    Container(

                      height: MediaQuery.of(context).size.height/20,
                    ),

                    Container(
                      child: Text('Booking ID',
                          style: TextStyle(
                              fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 15, left: 0),
                          child: Text('1219308119023617',
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15, left: 5),
                          child: Icon(
                            Icons.copy,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      ],
                    ),


                    Container(

                      height: MediaQuery.of(context).size.height/12,
                    ),


                    Container(
                      height: 50,
                      width: double.infinity,
                      child: RaisedButton(
                          color: Colors.red,
                          child: Text(
                            "Ok,Looks Great",
                            style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                          onPressed: () {
                            Get.off(()=>MainScreen());

                          }),
                    ),

                  ],
                ),
              ],
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
