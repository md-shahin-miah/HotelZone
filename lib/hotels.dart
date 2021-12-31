import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/provider/HotelProvider.dart';
import 'package:provider/provider.dart';

import 'common/Result.dart';
import 'component/HotelCard.dart';
import 'conf/app_config.dart';

class Hotels extends StatefulWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  _HotelsState createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<HotelProvider>(builder: (ctx, hotelProvider, child) {
        return Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: hotelProvider.availableHotels.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return HotelCard(
                      availableHotels: hotelProvider.availableHotels[index]);
                }),
            Center(
              child: FutureBuilder(
                  future: Future.delayed(
                      Duration.zero,
                      () => hotelProvider.pageStatus == Result.Loading
                          ? Container()
                          : Container()),
                  builder: (ctx, _) => hotelProvider.isEmpty ||
                          hotelProvider.pageStatus == Result.Error ||
                          hotelProvider.pageStatus == Result.Failed
                      ? getDialog()
                      : Container(
                          height: 60,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        )),
            ),
          ],
        );
      }),
    );
  }

  Widget getDialog(){
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)), //this right here
      child: Container(
        height: MediaQuery.of(context).size.height / 2.4,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.saved_search,
                    size: 84,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Text(
                        "Search Result Expired",
                        style: TextStyle(fontSize: 32, color: kPrimaryColor),
                      ))
                ],
              ),
              Spacer(),
              Container(
                width: 220,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Please Refresh or make a new search',
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kCyanSecondaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
              ),
              Spacer(
                flex: 2,
              ),
              SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 17,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.refresh,
                                    color: Colors.white
                                ),
                                SizedBox(
                                    width: 5
                                ),
                                Text(
                                    "Refresh",
                                    style: TextStyle(color: Colors.white)
                                ),
                              ],
                            ),
                            color: kRedPrimaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 10
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 17,
                          child: RaisedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.search,
                                    color: Colors.white
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "New Search",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            color: kPrimaryColor,
                          ),
                        ),
                      )
                    ],
                  )),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
