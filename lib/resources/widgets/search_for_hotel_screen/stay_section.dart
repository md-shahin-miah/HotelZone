import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/common/Utils.dart';
import 'package:hotelszone_flutter/provider/hotelSearchFormProvider.dart';
import 'package:provider/provider.dart';

class StaySection extends StatefulWidget {
  const StaySection(
      {Key? key, required this.checkInDate, required this.checkOutDate})
      : super(key: key);
  final DateTime checkInDate;
  final DateTime checkOutDate;

  @override
  _StaySectionState createState() => _StaySectionState();
}

class _StaySectionState extends State<StaySection> {
  int diff = 1;
  String differenceString = "";

  Future<void> _selectCheckInDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: widget.checkInDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != widget.checkInDate) {
      Provider.of<HotelSearchFormProvider>(context, listen: false)
          .setCheckInDate(picked);
    }
    dateDiff();
  }

  Future<void> _selectCheckOutDateDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: widget.checkOutDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != widget.checkOutDate) {
      Provider.of<HotelSearchFormProvider>(context, listen: false)
          .setCheckOutDate(picked);
    }
    dateDiff();
  }

  void dateDiff() {
    int difference = widget.checkInDate.difference(widget.checkOutDate).inDays;
    String differenceStr;

    if (diff > 1) {
      differenceStr = "$diff NIGHTS STAY";
    } else if (diff == 1) {
      differenceStr = "$diff NIGHT STAY";
    } else {
      differenceStr = "";
    }

    setState(() {
      differenceString = differenceStr;
    });
  }

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<HotelSearchFormProvider>(context, listen: false);

    int def = prov.getNightCount(widget.checkInDate, widget.checkOutDate);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () async {
                  _selectCheckInDate(context);

                  // final List<DateTime> picked = await DateRangePicker.showDatePicker(
                  //     context: context,
                  //     initialFirstDate: new DateTime.now(),
                  //     initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
                  //     firstDate: new DateTime(2015),
                  //     lastDate: new DateTime(DateTime.now().year + 2)
                  // );
                  // if (picked != null && picked.length == 2) {
                  //   print(picked);
                  // }
                  //
                  // SfDateRangePicker(
                  //   onSelectionChanged: _onSelectionChanged,
                  //   selectionMode: DateRangePickerSelectionMode.range,
                  //   initialSelectedRange: PickerDateRange(DateTime.now().subtract(const Duration(days: 4)),
                  //       DateTime.now().add(const Duration(days: 3))),
                  // );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Check in",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                    SizedBox(
                      height: 4,
                    ),
                    Text("${getFormatedDate(widget.checkInDate.toString())}",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20)),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () async {
                  _selectCheckOutDateDate(context);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Check Out",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                    SizedBox(
                      height: 4,
                    ),
                    Text("${getFormatedDate(widget.checkOutDate.toString())}",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20)),
                    SizedBox(
                      height: 4,
                    ),
                    Text("$def NIGHT STAY",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
