import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/provider/hotelSearchFormProvider.dart';
import 'package:provider/provider.dart';

class RemoveRoomButton extends StatefulWidget {
  final int index;
  const RemoveRoomButton({Key? key, required this.index}) : super(key: key);

  @override
  _RemoveRoomButtonState createState() => _RemoveRoomButtonState();
}

class _RemoveRoomButtonState extends State<RemoveRoomButton> {
  void RemoveRoom(){

    Provider.of<HotelSearchFormProvider>(context, listen: false).removeRoomAt(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: RemoveRoom,
      child: Text("REMOVE ROOM",
          style: TextStyle(
              fontFamily: "Rubik",
              color: Colors.black54,
              fontWeight: FontWeight.normal,
              fontSize: 16)),
    );
  }
}
