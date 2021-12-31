import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';
import 'package:hotelszone_flutter/model/HotelResponse.dart';

class RoomOffersList extends StatelessWidget {
  late List<HotelOffers> hotelOffers = [];

  RoomOffersList({required this.hotelOffers});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ...List.generate(hotelOffers.length,
              (index) => RoomOffer(roomOffer: hotelOffers[index]))
        ],
      ),
    );
  }
}

class RoomOffer extends StatelessWidget {
  late HotelOffers roomOffer;

  RoomOffer({required this.roomOffer});

  @override
  Widget build(BuildContext context) {
    var mediaqueryheight = MediaQuery.of(context).size.height;
    var mediaquerywidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [


          Container(
            height: mediaqueryheight / 35,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                    child: Text(roomOffer.name,
                        maxLines: 2,
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 20)),
                  )),
              Container(
                child: Text('\$${roomOffer.price.amount}',
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
              ),
              Radio(value: 0, groupValue: 0, onChanged: null)
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Icon(
                Icons.check,
                size: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Breakfast included",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14)),
              ),
              SizedBox(
                width: mediaquerywidth / 10,
              ),
              Icon(
                Icons.info_rounded,
                size: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Freely-Refundable",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14)),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 1,
            width: mediaquerywidth,
            color: kPrimaryColor,
          ),
          Container(
            height: mediaqueryheight / 35,
          ),

        ],
      ),
    );
  }
}
