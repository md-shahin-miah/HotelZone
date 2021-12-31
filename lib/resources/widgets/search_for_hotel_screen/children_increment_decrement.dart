import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/provider/hotelSearchFormProvider.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/decrement_button.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/increment_button.dart';
import 'package:provider/provider.dart';

import 'childs_age_field.dart';
class ChildrenIncrementDecrement extends StatefulWidget {
  final int childrens;
  final int index;
  const ChildrenIncrementDecrement({Key? key, required this.childrens, required this.index}) : super(key: key);

  @override
  _ChildrenIncrementDecrementState createState() => _ChildrenIncrementDecrementState();
}

class _ChildrenIncrementDecrementState extends State<ChildrenIncrementDecrement> {
  void childrenIncrementOnPressed(){
    Provider.of<HotelSearchFormProvider>(context, listen: false).addChildrenAt(widget.index);
  }

  void childrenDecrementOnPressed(){
    Provider.of<HotelSearchFormProvider>(context, listen: false).removeChildrenAt(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("Children",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22)),
                  ),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              DecrementButton(onPressed: childrenDecrementOnPressed),
                              Text(
                                this
                                    .widget.childrens
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              IncrementButton(
                                onPressed: childrenIncrementOnPressed,
                              )
                            ],
                          ))),
                ],
              ),
            ),
            ...List.generate(this.widget.childrens,
                    (childrenIndex) => ChildAgeField(index: childrenIndex, occupancyIndex: widget.index,)),
            SizedBox(
              height: 5,
            )
          ],
        ));
  }
}
