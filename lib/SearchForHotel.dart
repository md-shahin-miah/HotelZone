import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelszone_flutter/HotelListScreen.dart';
import 'package:hotelszone_flutter/common/Utils.dart';
import 'package:hotelszone_flutter/model/HotelRequest.dart';
import 'package:hotelszone_flutter/provider/HotelProvider.dart';
import 'package:hotelszone_flutter/provider/hotelSearchFormProvider.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/add_room.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/popular_destination_section.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/stay_section.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'conf/app_config.dart';
import 'package:hotelszone_flutter/resources/widgets/search_for_hotel_screen/occupancy_info.dart';

class SearchForHotel extends StatefulWidget {
  @override
  _SearchForHotelState createState() => _SearchForHotelState();
}

class _SearchForHotelState extends State<SearchForHotel> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  DateTime checkInDate = DateTime.now();

  Future<void> _selectCheckInDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: checkInDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != checkInDate)
      setState(() {
        checkInDate = picked;
      });
  }

  void fetchHotels() {
    var dest = Destination(cityId: 11054, cityCode: "LAS");
    var nat = Nationality(id: 199, name: "United States");

    List<int> ages = [];
    var oco = OccupencyDetails(adults: 2, childrens: 0, ages: ages);

    List<OccupencyDetails> _ocHotels = [];
    _ocHotels.add(oco);

    var request = Provider.of<HotelSearchFormProvider>(context, listen: false).getFormValues();

    print("ggggggggggggggggggggggggg "+request.toJson().toString());

   Provider.of<HotelProvider>(context, listen: false).fetchHotels(request);
    Get.to(() => HotelListScreen());
  }

  DateTime checkOutDate = DateTime.now().add(const Duration(days: 1));

  Future<void> _selectCheckOutDateDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: checkOutDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != checkOutDate)
      setState(() {
        checkOutDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    var mediaqueryheight = MediaQuery.of(context).size.height;
    var mediaquerywidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: colorBackgroundSearchBookingWithDetails,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Consumer<HotelSearchFormProvider>(
            builder: (ctx, hotelSearchFormProvider, child) {
              return ListView(
                children: [
                  Container(
                    child: ListTile(
                        leading: Image.asset("assets/images/hzcyan.png"),
                        trailing: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.call,
                            color: kPrimaryColor,
                            size: 30,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: mediaqueryheight / 34,
                  ),
                  PreferredSize(
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 5,),
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter city name",
                                border: InputBorder.none,
                                icon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.search)),
                                suffixIcon: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.mic))),
                            onChanged: (val) {},
                          ),
                        ),
                      ),
                    ),
                    preferredSize: Size.fromHeight(80.0),
                  ),
                  SizedBox(
                    height: mediaqueryheight / 34,
                  ),
                  StaySection(
                    checkInDate: hotelSearchFormProvider.checkIn,
                    checkOutDate: hotelSearchFormProvider.checkOut,
                  ),
                  SizedBox(
                    height: mediaqueryheight / 34,
                  ),

                  ...List.generate(
                      hotelSearchFormProvider.occupancyDetails.length,
                          (index) => OccupancyInfo(
                            occupencyDetails: hotelSearchFormProvider.occupancyDetails[index],
                            index: index,
                        )
                  ),
                  SizedBox(
                    height: mediaqueryheight / 34,
                  ),
                  PopularDestinationSection(),
                  SizedBox(
                    height: mediaqueryheight / 34,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: mediaqueryheight / 14,
                    width: double.infinity,
                    child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.red),
                        child: Text(
                          "Search for your hotel",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => fetchHotels()),
                  ),
                ],
              );
            },
          ),
        )));
  }
}
