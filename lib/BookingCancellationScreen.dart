

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotelszone_flutter/common/commonWidgets.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';

class BookingCancellationScreen extends StatelessWidget {
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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: MediaQuery.of(context).size.height/25,
                    ),


                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                        child:
                        Icon(Icons.check_circle,

                          size: 26,
                        ),),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Booking Confirmed',
                              style: TextStyle(
                                  fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 28)),
                        ),
                      ],
                    )

                 ,
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
                          child: CommonWidgets.horizontalList(4),
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
                      child:FittedBox(
                        fit: BoxFit.fill,
                        child:     Text('Sat 19 Jul,2021 - Sun 20 Jul,2021',
                            style: TextStyle(
                                fontFamily: "Rubik", color: kPrimaryColor, fontWeight: FontWeight.normal, fontSize: 22)),
                      )

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

                    Row(


                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                      Container(
                        padding: EdgeInsets.only(top: 15,bottom: 30),
                        child: InkWell(
                          onTap: (){

                            _showDialogCancellation(context);



                          },
                          child: Text('Cancellation policy',
                              style: TextStyle(
                                fontFamily: "Rubik",
                                color: kPrimaryColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 16
                                ,decoration: TextDecoration.underline,
                              )),

                        )
                      ),
                    ],)
,

                    Container(
                      height: 60,
                      width: double.infinity,
                      child: RaisedButton(
                          color: kPrimaryColor,
                          child: Text(
                            "Cancel Booking",
                            style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                          onPressed: () {



                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(8.0)), //this right here
                                    child: Container(
                                      height: MediaQuery.of(context).size.height/3.5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 10),

                                              child: Text('Are you sure you want to cancel this booking ?',
                                                  style: TextStyle(
                                                      fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 20)),
                                            ),

                                            SizedBox(height: MediaQuery.of(context).size.height/14,),

                                            SizedBox(

                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: MediaQuery.of(context).size.width/3,
                                                      height:MediaQuery.of(context).size.height/17,
                                                      child:  RaisedButton(
                                                          onPressed: () {},
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(Icons.check,color: Colors.white,),
                                                              SizedBox(width: 5,),
                                                              Text(
                                                                "Yes",
                                                                style: TextStyle(color: Colors.white),
                                                              ),
                                                            ],
                                                          ),
                                                          color: kRedPrimaryColor,
                                                        ),
                                                  ),

                                                  SizedBox(width: 10,),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width/3,
                                                    height: MediaQuery.of(context).size.height/17,
                                                    child: RaisedButton(
                                                        onPressed: () {},
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Icon(Icons.clear,color: Colors.white,),
                                                            SizedBox(width: 5,),
                                                            Text(
                                                              "No",
                                                              style: TextStyle(color: Colors.white),
                                                            ),
                                                          ],
                                                        ),
                                                        color: kPrimaryColor,
                                                      ),

                                                  )


                                                ],
                                              )
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });



                          }),
                    ),

                  ],
                ),
              ],
            )));
  }






  void _showDialogCancellation(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(8.0)), //this right here
            child: Container(
              height: MediaQuery.of(context).size.height/1.2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),

                      child: Text('Cancellation Policy',
                          style: TextStyle(
                              fontFamily: "Rubik", color: Colors.black, fontWeight: FontWeight.normal, fontSize: 24)),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 4),

                      child:  ListTile(
                        leading: Icon(Icons.info_rounded,color: Colors.black,),
                        title: RichText(
                          text: TextSpan(
                            text: 'Cancellation from ',
                            style:TextStyle(fontWeight: FontWeight.normal,color: Colors.black),
                            children: const <TextSpan>[
                              TextSpan(text: 'August 17th 2021', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: ' incurs a ', style: TextStyle(fontWeight: FontWeight.normal)),
                              TextSpan(text: '125.34 USD ', style: TextStyle(color:  Colors.red,fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Penalty.', style: TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          ),
                        )


                        // Text('Cancellation from August 17th 2021 incurs a 125.34 USD Penalty',
                        //     style: TextStyle(
                        //         fontFamily: "Rubik", color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),

                      child: Text('Remarks',
                          style: TextStyle(
                              fontFamily: "Rubik", color: Colors.black, fontWeight: FontWeight.normal, fontSize: 20)),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height/45,),

                    Container(
                      height: MediaQuery.of(context).size.height/2.2,
                      child:  SingleChildScrollView(
                        scrollDirection: Axis.vertical,//
                        child:// children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),

                            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting,remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                style: TextStyle(
                                    fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 16)),
                          ),

                      ),
                    )

,

                    SizedBox(height: MediaQuery.of(context).size.height/28,),

                    SizedBox(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width/5,
                                height:MediaQuery.of(context).size.height/20,
                                child:  RaisedButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "ok",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    color: kRedPrimaryColor,
                                  ),

                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
          );
        });

  }
}
