import 'package:country_picker/country_picker.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/SplashScreenBlack.dart';

import 'conf/app_config.dart';

class NationalityAndCurrencyScreenBlack extends StatelessWidget {
  const NationalityAndCurrencyScreenBlack({Key? key}) : super(key: key);

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
                          color: Colors.black54,
                          child: SingleChildScrollView(
                              child: Container(

                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: mediaqueryheight / 14,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Image.asset("assets/images/hzzone.png"),
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 20,
                                    ),
                                    SizedBox(
                                      height: mediaqueryheight / 10,
                                    ),

                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 0),
                                      height: 60,
                                      width: double.infinity,
                                      child: RaisedButton(
                                          color: Colors.white,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [

                                              Icon(Icons.flag),


                                              Text(
                                                "Nationality",
                                                style:
                                                TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
                                              ),
                                              Icon(Icons.keyboard_arrow_down),
                                            ],
                                          ),
                                          onPressed: () {
                                            showCountryPicker(
                                              context: context,
                                              //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                                              exclude: <String>['KN', 'MF'],
                                              //Optional. Shows phone code before the country name.
                                              showPhoneCode: true,
                                              onSelect: (Country country) {
                                                print('Select country: ${country.displayName}');
                                              },
                                              // Optional. Sets the theme for the country list picker.
                                              countryListTheme: CountryListThemeData(
                                                // Optional. Sets the border radius for the bottomsheet.
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(40.0),
                                                  topRight: Radius.circular(40.0),
                                                ),
                                                // Optional. Styles the search field.
                                                inputDecoration: InputDecoration(
                                                  labelText: 'Search',
                                                  hintText: 'Start typing to search',
                                                  prefixIcon: const Icon(Icons.search),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: const Color(0xFF8C98A8).withOpacity(0.2),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),

                                    SizedBox(
                                      height: mediaqueryheight / 24,
                                    ),

                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 0),
                                      height: 60,
                                      width: double.infinity,
                                      child: RaisedButton(
                                          color: Colors.white,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [

                                              Icon(Icons.money),


                                              Text(
                                                "Currency",
                                                style:
                                                TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
                                              ),
                                              Icon(Icons.keyboard_arrow_down),
                                            ],
                                          ),
                                          onPressed: () {

                                            showCurrencyPicker(
                                              context: context,
                                              showFlag: true,
                                              showCurrencyName: true,
                                              showCurrencyCode: true,
                                              onSelect: (Currency currency) {
                                                print('Select currency: ${currency.name}');
                                              },
                                              favorite: ['SEK'],
                                            );


                                          }),
                                    ),

                                    SizedBox(
                                      height: mediaqueryheight / 4,
                                    ),



                                    Container(

                                      padding: EdgeInsets.symmetric(horizontal: 0),
                                      height: 60,
                                      width: double.infinity,
                                      child: RaisedButton(
                                          color: kRedPrimaryColor,
                                          child: Text(
                                            "Continue",
                                            style:
                                            TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
                                          ),
                                          onPressed: () {
                                            Get.to(()=>SplashScreenBlack());
                                          }),
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
