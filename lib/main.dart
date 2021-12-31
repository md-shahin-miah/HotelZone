import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/NationalityAndCurrencyScreenBlack.dart';
import 'package:hotelszone_flutter/provider/HotelProvider.dart';
import 'package:hotelszone_flutter/provider/hotelSearchFormProvider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (ctx) => HotelProvider(),),
      ChangeNotifierProvider(create: (ctx) => HotelSearchFormProvider(),),
    ], child: GetMaterialApp(debugShowCheckedModeBanner: false, home: NationalityAndCurrencyScreenBlack()));
  }
}
