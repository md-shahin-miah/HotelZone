import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/BookingConfirmationScreen.dart';
import 'package:hotelszone_flutter/common/commonWidgets.dart';
//
import 'conf/app_config.dart';

class SecureReservationScreen extends StatefulWidget {
  const SecureReservationScreen({Key? key}) : super(key: key);

  @override
  _SecureReservationScreenState createState() => _SecureReservationScreenState();
}

class _SecureReservationScreenState extends State<SecureReservationScreen> {
  String hotelName = "Radisson Blue";
  String addressOfBookedHotel = "2820 Coburn Hollow Road, Peopria 1L";
  String duration = "1 Night stay";

  var _currencies = [
    "MR",
    "Mrs",
  ];

  String dropdownValue = "Mr";

  @override
  Widget build(BuildContext context) {
    var mediaqueryheight = MediaQuery.of(context).size.height;
    var mediaquerywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kPrimaryColor,
        title: Text("Your Secure Reservation",
            style: TextStyle(fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16)),
      ),
      body: LayoutBuilder(builder: (ctx, constrains) {
        return Scaffold(
          backgroundColor: colorBackgroundSearchBookingWithDetails,
          body: Container(
            height: constrains.maxHeight,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: mediaqueryheight / 30,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
                          height: mediaqueryheight / 9,
                          width: mediaquerywidth * 2 / 7,
                          child: Image.asset(
                            "assets/images/3d-rendering-modern-luxury-hotel-reception-lounge-office.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                          height: mediaqueryheight / 9,
                          width: mediaquerywidth * 4 / 7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('$hotelName',
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20)),
                              ),
                              Container(
                                  child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text('$addressOfBookedHotel',
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14)),
                              )),
                              SizedBox(
                                height: mediaqueryheight / 30,
                                width: double.infinity,
                                child: CommonWidgets.horizontalList(4),
                              )
                            ],
                          ),
                        ),
                      ],
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
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20, left: 0),
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text('Sat 19 Jul,2021 - Sun 20 Jul,2021',
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22)),
                        )),
                    Container(
                      height: mediaqueryheight / 30,
                    ),
                    Container(
                      child: Text('Room 1',
                          style: TextStyle(
                              fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text('Double Room',
                          style: TextStyle(
                              fontFamily: "Rubik", color: kPrimaryColor, fontWeight: FontWeight.normal, fontSize: 20)),
                    ),
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
                          Icons.info_rounded,
                          size: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Freely-Refundable",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
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
                      height: mediaqueryheight / 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 0, bottom: 10),
                      child: Text('Contact details',
                          style: TextStyle(
                              fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 0, right: 0, top: 0),
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
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),
                    Container(
                      height: mediaqueryheight / 50,
                    ),
                    Row(
                      children: [
                        Container(
                          height: mediaqueryheight / 13,
                          width: mediaquerywidth * 2 / 7,
                          child: Card(
                            // margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                            elevation: 0.5,

                            child: CountryListPick(
                              appBar: AppBar(
                                backgroundColor: Colors.amber,
                                title: Text('Pick your country'),
                              ),
                              // if you need custom picker use this
                              pickerBuilder: (context, countryCode) {
                                return Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(
                                        countryCode!.flagUri!,
                                        package: 'country_list_pick',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(countryCode.code!),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(countryCode.dialCode!),
                                  ],
                                );
                              },
                              theme: CountryTheme(
                                isShowFlag: true,
                                isShowTitle: true,
                                isShowCode: true,
                                isDownIcon: true,
                                showEnglishName: false,
                                labelColor: Colors.blueAccent,
                              ),
                              initialSelection: '+231',
                              // or
                              // initialSelection: 'US'
                              onChanged: (code) {
                                print(code!.name);
                                print(code.code);
                                print(code.dialCode);
                                print(code.flagUri);
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: mediaquerywidth / 28,
                        ),
                        Container(
                          height: mediaqueryheight / 15,
                          width: mediaquerywidth * 4 / 7,
                          child: Card(
                            margin: EdgeInsets.only(left: 5, right: 0, top: 0),
                            elevation: 0.5,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.call,
                                    color: Colors.black26,
                                  ),
                                  hintText: "Phone number",
                                  hintStyle: TextStyle(color: Colors.black26),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: mediaqueryheight / 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5, bottom: 10),
                      child: Text('Lead Guest',
                          style: TextStyle(
                              fontFamily: "Rubik", color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),
                    ),
                    Row(
                      children: [
                        Container(
                          height: mediaqueryheight / 13,
                          width: mediaquerywidth * 2 / 7,
                          child: Card(
                              // margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                              elevation: 0.5,
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.grey,
                                    ),
                                    iconSize: 28,
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.deepPurple),
                                    // underline: Container(
                                    //   height: 2,
                                    //   color: Colors.deepPurpleAccent,
                                    // ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'Mr',
                                      'Mrs',
                                    ].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ))),
                        ),
                        Container(
                          height: mediaqueryheight / 15,
                          width: mediaquerywidth * 4.3 / 7,
                          child: Card(
                            margin: EdgeInsets.only(left: 5, right: 0, top: 0),
                            elevation: 0.5,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.black26,
                                  ),
                                  hintText: "First name",
                                  hintStyle: TextStyle(color: Colors.black26),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: mediaqueryheight / 50,
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                      elevation: 0.5,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black26,
                            ),
                            hintText: "Last name",
                            hintStyle: TextStyle(color: Colors.black26),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),
                    Container(
                      height: mediaqueryheight / 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: mediaqueryheight / 16,
                          width: mediaquerywidth * 3.1 / 7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Total Payment',
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        color: Colors.grey,
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
                              'Pay with PayPal',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                            ),
                            onPressed: () {
                              Get.to(()=>BookingConfirmationScreen());
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red, textStyle: TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: mediaqueryheight / 40,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'By making reservation.I accept HotelZone ',
                        style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Terms of use ',
                              style: TextStyle(fontWeight: FontWeight.normal, decoration: TextDecoration.underline)),
                          TextSpan(text: 'and ', style: TextStyle(fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: 'Privacy policy',
                              style: TextStyle(fontWeight: FontWeight.normal, decoration: TextDecoration.underline)),
                        ],
                      ),
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
