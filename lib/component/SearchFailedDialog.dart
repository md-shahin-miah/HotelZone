

import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';

class SearchFailedDialog extends StatelessWidget {
  const SearchFailedDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(8.0)), //this right here
            child: Container(
              height: MediaQuery.of(context).size.height/2.6,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(children: [
                      Icon(Icons.saved_search,size: 84,color: kPrimaryColor,),
                      SizedBox(width: 8,),
                      Expanded(child: Text("Search Result Expired",style: TextStyle(fontSize: 32,color: kPrimaryColor),))

                    ],),
                    Spacer(),
                    Container(
                      width: 220,
                      padding: const EdgeInsets.symmetric(horizontal: 10),

                      child: Text('Please Refresh or make a new search',
                          style: TextStyle(
                              fontFamily: "Rubik", color: kCyanSecondaryColor, fontWeight: FontWeight.normal, fontSize: 20)),
                    ),

                    Spacer(flex: 2,),

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
                                    Icon(Icons.refresh,color: Colors.white,),
                                    SizedBox(width: 5,),
                                    Text(
                                      "Refresh",
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
                                    Icon(Icons.search,color: Colors.white,),
                                    SizedBox(width: 5,),
                                    Text(
                                      "New Search",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                color: kPrimaryColor,
                              ),

                            )


                          ],
                        )
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          );
        });


    return Container();
  }
}
