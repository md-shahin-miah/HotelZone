import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';
import 'package:hotelszone_flutter/model/HotelRequest.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/add_room.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/adult_increment_decrement.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/children_increment_decrement.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/remove_room.dart';

class OccupancyInfo extends StatelessWidget {
  final OccupencyDetails occupencyDetails;
  final int index;
  const OccupancyInfo(
      {Key? key, required this.occupencyDetails, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Room ${this.index + 1}",
                  style: TextStyle(
                      fontFamily: "Rubik",
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 14)),
              (this.index == 0) ? AddRoomButton() : RemoveRoomButton(index: index,)
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
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

                              AdultIncrementDecrement(adults: this.occupencyDetails.adults, index: index,)
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              ChildrenIncrementDecrement(childrens: this.occupencyDetails.childrens, index: index)
            ],
          ),
        ],
      ),
    );
  }
}
