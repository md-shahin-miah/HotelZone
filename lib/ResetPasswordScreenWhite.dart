import 'package:flutter/material.dart';

import 'conf/app_config.dart';

class ResetPasswordScreenWhite extends StatelessWidget {
  const ResetPasswordScreenWhite({Key? key}) : super(key: key);

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
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: mediaqueryheight / 18,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Image.asset("assets/images/hzcyan.png"),
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 20,
                                    ),
                                    Container(
                                      child: Text(
                                          "Reset Your "
                                              "\nPassword",
                                          style: TextStyle(
                                              fontFamily: "Rubik",
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 34)),
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 10,
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
                                            hintStyle: TextStyle(color: Colors.black54),
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
                                      height: mediaqueryheight / 20,
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
                                                Icons.login_outlined,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                "Reset your password",
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
