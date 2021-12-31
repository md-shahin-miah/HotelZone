import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/Profile.dart';
import 'package:hotelszone_flutter/SearchForBookingsScreen.dart';
import 'package:hotelszone_flutter/SearchForHotel.dart';
import 'package:hotelszone_flutter/conf/app_config.dart';
import 'package:hotelszone_flutter/resources/FilterScreeen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List<Widget> _pages = [
    SearchForHotel(),
    SearchForBookingScreen(),
    ProfileScreen(),
  ];
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _getBottomNavigationBar(),
      body: _pages[_selectedPageIndex],
    );
  }

  Widget _getBottomNavigationBar() {
    return Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.search_outlined,
                    color: kRedPrimaryColor,
                    size: 28,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Search",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w800, fontSize: 18),
                  )
                ]),
                onTap: () {
                  _selectPage(0);
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    color: kRedPrimaryColor,
                    size: 28,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Booking",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w800, fontSize: 18),
                  )
                ]),
                onTap: () {
                  _selectPage(1);
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.person,
                    color: kRedPrimaryColor,
                    size: 28,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Profile",
                    style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w800, fontSize: 18),
                  )
                ]),
                onTap: () {
                  _selectPage(2);
                },
              ),
            ),
          ],
        ));
  }
}
