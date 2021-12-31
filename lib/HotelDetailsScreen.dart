import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/SecureReservationScreen.dart';
import 'package:hotelszone_flutter/component/RatingBar.dart';
import 'package:hotelszone_flutter/component/RoomOffers.dart';
import 'package:hotelszone_flutter/model/HotelResponse.dart';
import 'common/commonWidgets.dart';
import 'conf/app_config.dart';

class HotelDetailsScreen extends StatelessWidget {
  late AvailableHotels availableHotels;

  HotelDetailsScreen({required this.availableHotels});

  String hotelName = "Radisson Blue";
  String addressOfBookedHotel = "2820 Coburn Hollow Road, Peopria 1L";
  String duration = "1 Night stay";

  var _currencies = [
    "MR",
    "Mrs",
  ];

  String dropdownValue = "Mr";

  int _groupValue = -1;

  Widget _myRadioButton(
      {required String title,
      required int value,
      required Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: null,
      title: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaqueryheight = MediaQuery.of(context).size.height;
    var mediaquerywidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kPrimaryColor,
        title: Text(availableHotels.name,
            style: TextStyle(
                fontFamily: "Rubik",
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16)),
      ),
      body: LayoutBuilder(builder: (ctx, constrains) {
        return Scaffold(
          backgroundColor: colorBackgroundSearchBookingWithDetails,
          body: Container(
            height: constrains.maxHeight,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: mediaquerywidth,
                      height: mediaqueryheight / 3.5,
                      child: Image.network(
                        availableHotels.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                      width: mediaquerywidth * 4 / 7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('${availableHotels.name}',
                                style: TextStyle(
                                    fontFamily: "Rubik",
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20)),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 6),
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text('${availableHotels.address}',
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        color: kCyanSecondaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14)),
                              )),
                          SizedBox(
                            height: mediaqueryheight / 30,
                            width: double.infinity,
                            child: RatingBar(num: availableHotels.stars),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Hotel Description",
                          style: TextStyle(
                              color: kCyanSecondaryColor, fontSize: 16),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: kCyanSecondaryColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      child: Text(availableHotels.descriptions.shortDescription,
                          style: TextStyle(
                              fontFamily: "Rubik",
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12)),
                    ),
                    Container(
                      height: mediaqueryheight / 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Main Address",
                          style: TextStyle(
                              color: kCyanSecondaryColor, fontSize: 16),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: kCyanSecondaryColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Breakfast included",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                        SizedBox(
                          width: mediaquerywidth / 10,
                        ),
                        Icon(
                          Icons.check,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Breakfast included",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Breakfast included",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                        SizedBox(
                          width: mediaquerywidth / 10,
                        ),
                        Icon(
                          Icons.check,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Breakfast included",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Breakfast included",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                        SizedBox(
                          width: mediaquerywidth / 10,
                        ),
                        Icon(
                          Icons.check,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Breakfast included",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Breakfast included",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                        SizedBox(
                          width: mediaquerywidth / 10,
                        ),
                        Icon(
                          Icons.check,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Breakfast included",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "How in get there",
                          style: TextStyle(
                              color: kCyanSecondaryColor, fontSize: 16),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: kCyanSecondaryColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: mediaquerywidth,
                      height: mediaqueryheight / 4,
                      child: Image.asset(
                        "assets/images/map_image.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(height: mediaqueryheight / 20),
                    RoomOffersList(hotelOffers: availableHotels.hotelOffers),
                    Container(height: mediaqueryheight / 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: mediaqueryheight / 12,
                          width: mediaquerywidth * 3.1 / 7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Total Payment',
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        color: kCyanSecondaryColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('\$299',
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: mediaqueryheight / 16,
                          width: mediaquerywidth * 3.1 / 7,
                          child: ElevatedButton(
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 18),
                            ),
                            onPressed: () {
                              Get.to(() => SecureReservationScreen());
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 14),
                        child: InkWell(
                          onTap: () {},
                          child: Text('Cancellation policy',
                              style: TextStyle(
                                fontFamily: "Rubik",
                                color: kPrimaryColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              )),
                        )),
                    Container(
                      height: mediaqueryheight / 40,
                    ),
                    Container(
                      height: mediaqueryheight / 25,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
