import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/MainScreen.dart';
import 'package:hotelszone_flutter/ResetPasswordScreenBlack.dart';

import 'conf/app_config.dart';

class LoginScreenBlack extends StatelessWidget {
  const LoginScreenBlack({Key? key}) : super(key: key);

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
                    child:
                        Container(
                          height: double.infinity,
                          color: Colors.black54,
                          child:  SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),

                              child: Column(
                                children: [
                                  SizedBox(
                                    height: mediaqueryheight / 18,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset("assets/images/hzzone.png"),
                                  ),
                                  SizedBox(
                                    height: mediaqueryheight / 20,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text("Login to your",
                                        style: TextStyle(
                                            fontFamily: "Rubik",
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 34)),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text("account",
                                        style: TextStyle(
                                            fontFamily: "Rubik",
                                            color: Colors.white,
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
                                            color: Colors.black26,
                                          ),
                                          hintText: "Email Address",
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
                                  SizedBox(
                                    height: mediaqueryheight / 20,
                                  ),
                                  Card(
                                    margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                                    elevation: 0.5,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.lock_open,
                                            color: Colors.black26,
                                          ),
                                          suffixIcon: Icon(
                                            Icons.remove_red_eye_outlined,
                                            color: Colors.black26,
                                          ),
                                          hintText: "Password",
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
                                              Icons.login_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Login to your account",
                                              style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {

                                          Get.to(()=>MainScreen());

                                        }),
                                  ),

                                  SizedBox(
                                    height: mediaqueryheight / 30,
                                  ),
                                  Row(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text("Forgot Password? ",
                                            style: TextStyle(
                                                fontFamily: "Rubik",
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16)),
                                      ),
                                      InkWell(child:Container(
                                        child: Text("click here",
                                            style: TextStyle(
                                                fontFamily: "Rubik",
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16,
                                                decoration: TextDecoration.underline
                                            )),
                                      ) ,onTap: (){

                                        Get.to(()=>ResetPasswordScreenBlack());
                                      },)

                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),
                        )

                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
