import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';

import 'SearchFailedDialog.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 55,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.search),
              Expanded(
                flex: 12,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
                  child: TextField(
                      controller: searchController,
                      keyboardType: TextInputType.text,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Enter city name")),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)), //this right here
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.6,
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
                                      Container(
                                        width: MediaQuery.of(context).size.width / 3,
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
                                      SizedBox(
                                        width: 10
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width / 3,
                                        height: MediaQuery.of(context).size.height / 17,
                                        child: RaisedButton(
                                          onPressed: () {},
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
                                      )
                                    ],
                                  )),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Icon(Icons.mic),
              )
            ],
          ),
        ),
      ),
    );
  }
}
