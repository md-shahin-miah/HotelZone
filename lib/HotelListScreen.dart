import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hotelszone_flutter/MapScreen.dart';
import 'package:hotelszone_flutter/SortScreen.dart';
import 'package:hotelszone_flutter/common/Result.dart';
import 'package:hotelszone_flutter/provider/HotelProvider.dart';
import 'package:hotelszone_flutter/resources/FilterScreeen.dart';
import 'package:provider/provider.dart';

import 'component/ComponentItem.dart';
import 'component/SearchBar.dart';
import 'conf/app_config.dart';
import 'hotels.dart';

class HotelListScreen extends StatefulWidget {
  const HotelListScreen({Key? key}) : super(key: key);

  @override
  _HotelListScreenState createState() => _HotelListScreenState();
}

class _HotelListScreenState extends State<HotelListScreen> {
  bool mapActive = false;
  bool filterActive = false;
  bool sortActive = false;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;

      mapActive = false;
      filterActive = false;
      sortActive = false;

      if (index == 3) {
        if (sortActive) {
          sortActive = false;
          _selectPage(0);
        } else {
          sortActive = true;
        }
      }

      if (index == 2) {
        filterActive = true;
      }
      if (index == 1) {
        mapActive = true;
      }
    });
  }

  final List<Widget> _pages = [
    Hotels(),
    MapScreen(),
    FilterScreen(),
    SortScreen(),
  ];
  int _selectedPageIndex = 0;

  ScrollController controller = new ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(_scrollListener);
  }

  void _scrollListener() {
    print(controller.position.extentAfter);
    if (controller.position.pixels == controller.position.maxScrollExtent &&
        _selectedPageIndex == 0 ) {
      final prov = Provider.of<HotelProvider>(context, listen: false);
      if (!prov.isEmpty && prov.pageStatus !=Result.Loading) {
        prov.count++;
        prov.setLoading();
        prov.fetchCacheHotels(prov.count);
      } else {
        Fluttertoast.showToast(msg: "No Data available");
      }
    }
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBackgroundSearchBookingWithDetails,
        body: SafeArea(
          child: ListView(
            controller: controller,
            children: [
              SearchBar(),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(),
                  InkWell(
                    onTap: () {
                      _selectPage(1);
                    },
                    child: ComponentItem(
                      iconData: Icons.map_outlined,
                      string: "Map",
                      isActive: mapActive,
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      _selectPage(2);
                    },
                    child: ComponentItem(
                      iconData: Icons.filter_list_alt,
                      string: "Filter",
                      isActive: filterActive,
                    ),
                  ),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      _selectPage(3);
                    },
                    child: ComponentItem(
                      iconData: Icons.sort,
                      string: "Sort",
                      isActive: sortActive,
                    ),
                  ),
                  Spacer()
                ],
              ),
              _pages[_selectedPageIndex],
            ],
          ),
        ));
  }
}
