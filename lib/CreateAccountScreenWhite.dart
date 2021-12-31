import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

import 'conf/app_config.dart';

class CreateAccountScreenWhite extends StatelessWidget {
  const CreateAccountScreenWhite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaqueryheight = MediaQuery.of(context).size.height;
    var mediaquerywidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage("assets/images/luxury-bedroom-with-bed.jpg"))),
                ),
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: double.infinity,
                          color: Colors.white60,
                          child: SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                color: Colors.white60,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: mediaqueryheight / 20,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Image.asset("assets/images/hzcyan.png"),
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 20,
                                    ),
                                    Container(
                                      child: Text("Create an Account",
                                          style: TextStyle(
                                              fontFamily: "Rubik",
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 34)),
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Card(
                                            margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                                            elevation: 0.5,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.person,
                                                    color: Colors.black54,
                                                  ),
                                                  hintText: "First Name",
                                                  hintStyle: TextStyle(color: Colors.black54,),
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                                  ),
                                                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: mediaquerywidth / 40,
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Card(
                                            margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                                            elevation: 0.5,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.person,
                                                    color: Colors.black54,
                                                  ),
                                                  hintText: "Last Name",
                                                  hintStyle: TextStyle(color: Colors.black54,),
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                                  ),
                                                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 30,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            // height: mediaqueryheight/10,
                                            child: Card(
                                              // margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                                              elevation: 0.5,

                                              child: CountryListPick(
                                                appBar: AppBar(
                                                  backgroundColor: kPrimaryColor,
                                                  title: Text('Pick your country'),
                                                ),
                                                // if you need custom picker use this
                                                pickerBuilder: (context, countryCode) {
                                                  return Container(
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: mediaqueryheight * 1 / 20,
                                                          width: mediaquerywidth / 10,
                                                          child: Image.asset(
                                                            countryCode!.flagUri!,
                                                            package: 'country_list_pick',
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        // Text(countryCode.code!),
                                                        // SizedBox(
                                                        //   width: 4,
                                                        // ),
                                                        Text(
                                                          countryCode.dialCode!,
                                                          style: TextStyle(color: Colors.black),
                                                        ),
                                                      ],
                                                    ),
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
                                        ),
                                        SizedBox(
                                          width: mediaquerywidth / 40,
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              // height: mediaqueryheight/12,
                                              child: Card(
                                                margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                                                elevation: 0.5,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      prefixIcon: Icon(
                                                        Icons.call,
                                                        color: Colors.black54,
                                                      ),
                                                      hintText: "Phone Number",
                                                      hintStyle: TextStyle(color: Colors.black54,),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      border: OutlineInputBorder(
                                                        borderSide: BorderSide.none,
                                                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                                      ),
                                                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 30,
                                    ),
                                    Card(
                                      margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                                      elevation: 0.5,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: Colors.black54,
                                            ),
                                            hintText: "Email Address",
                                            hintStyle: TextStyle(color: Colors.black54,),
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                            ),
                                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 30,
                                    ),
                                    Card(
                                      margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                                      elevation: 0.5,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.lock_open,
                                              color: Colors.black54,
                                            ),
                                            suffixIcon: Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: Colors.black54,
                                            ),
                                            hintText: "Password",
                                            hintStyle: TextStyle(color: Colors.black54,),
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                            ),
                                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 30,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 0),
                                      height: 60,
                                      width: double.infinity,
                                      child: RaisedButton(
                                          color: kRedPrimaryColor,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.person_pin,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                "Create Account",
                                                style:
                                                TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ],
                                ),
                              )),
                        )))
              ],
            ),
          ),
        ));
  }
}
