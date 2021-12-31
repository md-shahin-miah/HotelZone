import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/provider/hotelSearchFormProvider.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/decrement_button.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/increment_button.dart';
import 'package:provider/provider.dart';

class AdultIncrementDecrement extends StatefulWidget {
  final int adults;
  final int index;
  const AdultIncrementDecrement({Key? key, required this.adults, required this.index}) : super(key: key);

  @override
  _AdultIncrementDecrementState createState() => _AdultIncrementDecrementState();
}

class _AdultIncrementDecrementState extends State<AdultIncrementDecrement> {
  void adultIncrementOnPressed(){
    Provider.of<HotelSearchFormProvider>(context, listen: false).addAdultAt(widget.index);
  }

  void adultDecrementOnPressed(){
    Provider.of<HotelSearchFormProvider>(context, listen: false).removeAdultAt(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Adults",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22)),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                DecrementButton(onPressed: adultDecrementOnPressed),
                                Text(
                                  this.widget.adults.toString(),
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                                IncrementButton(onPressed: adultIncrementOnPressed)
                              ],
                            ))),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
