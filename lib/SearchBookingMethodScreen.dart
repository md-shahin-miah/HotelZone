import 'package:flutter/material.dart';

import 'conf/app_config.dart';

class SearchBookingMethodScreen extends StatelessWidget {
  const SearchBookingMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBackgroundSearchBookingWithDetails,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: kPrimaryColor,
          title: Text("Bookings",
              style: TextStyle(fontFamily: "Rubik", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16)),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 15, left: 0),
                child: Text('Search to see your bookings',
                    style: TextStyle(
                        fontFamily: "Rubik", color: kPrimaryColor, fontWeight: FontWeight.normal, fontSize: 22)),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                    color: kRedPrimaryColor,
                    child: Row(
                      children: [
                        Icon(
                          Icons.login_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Sign in to your account",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    onPressed: () {}),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      )),
                  Expanded(
                      flex: 1,
                      child:
                      Center(
                        child:  Container(
                          child: Text(
                            "OR",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ))
                ],
              )
              ),
              Container(
                height: MediaQuery.of(context).size.height / 25,
              ),

              Container(
                padding: EdgeInsets.only(top: 15, left: 30,right: 30),
                child: Text('Find a Bookings With your Details',
                    style: TextStyle(
                        fontFamily: "Rubik", color: kPrimaryColor, fontWeight: FontWeight.normal, fontSize: 20)),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 20,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                    color: kPrimaryColor,
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Sign in to your account",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ));
  }
}
