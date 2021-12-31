import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/provider/hotelSearchFormProvider.dart';
import 'package:provider/provider.dart';

class AddRoomButton extends StatefulWidget {
  const AddRoomButton({Key? key}) : super(key: key);

  @override
  _AddRoomButtonState createState() => _AddRoomButtonState();
}

class _AddRoomButtonState extends State<AddRoomButton> {
  void addRoom(){

    Provider.of<HotelSearchFormProvider>(context, listen: false).addEmptyRoom();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: addRoom,
      child: Text("ADD ROOM",
          style: TextStyle(
              fontFamily: "Rubik",
              color: Colors.black54,
              fontWeight: FontWeight.normal,
              fontSize: 16)),
    );
  }
}
