import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/common/Utils.dart';
import 'package:hotelszone_flutter/model/HotelRequest.dart';

class HotelSearchFormProvider with ChangeNotifier {
  int roomCount = 1;
  Destination? destination;
  List<OccupencyDetails> occupancyDetails = [
    OccupencyDetails(adults: 1, childrens: 0, ages: [])
  ];
  DateTime checkIn = DateTime.now();
  DateTime checkOut = DateTime.now().add(const Duration(days: 1));

  void addEmptyRoom() {
    if (this.occupancyDetails.length >= 5) {
      return;
    }
    this
        .occupancyDetails
        .add(OccupencyDetails(adults: 1, childrens: 0, ages: []));
    notifyListeners();
  }

  void removeRoomAt(int index) {
    this.occupancyDetails.removeAt(index);
    notifyListeners();
  }

  void addAdultAt(int index) {
    if (this.occupancyDetails[index].adults >= 9) {
      return;
    }
    this.occupancyDetails[index].adults =
        this.occupancyDetails[index].adults + 1;
    notifyListeners();
  }

  void removeAdultAt(int index) {
    if (this.occupancyDetails[index].adults == 1) {
      return;
    }
    this.occupancyDetails[index].adults =
        this.occupancyDetails[index].adults - 1;
    notifyListeners();
  }

  void addChildrenAt(int index) {
    if (this.occupancyDetails[index].childrens >= 5) {
      return;
    }
    this.occupancyDetails[index].childrens =
        this.occupancyDetails[index].childrens + 1;

    notifyListeners();
  }

  void removeChildrenAt(int index) {
    if (this.occupancyDetails[index].childrens == 0) {
      return;
    }
    this.occupancyDetails[index].childrens =
        this.occupancyDetails[index].childrens - 1;
    this.occupancyDetails[index].ages.removeLast();
    notifyListeners();
  }

  void setChildAgeAt(
      {required int occupancyIndex,
      required int childAgeIndex,
      required int age}) {
    if (age >= 18) {
      return;
    }
    print(json.encode(this.occupancyDetails));
    print(childAgeIndex);
    print(occupancyIndex);
    print(age);

    this.occupancyDetails[occupancyIndex].ages.add(age);
  }

  void setCheckInDate(DateTime date) {
    this.checkIn = date;
    notifyListeners();
  }

  void setCheckOutDate(DateTime date) {
    this.checkOut = date;
    notifyListeners();
  }

  HotelRequest getFormValues() {
    var dest = Destination(cityId: 11054, cityCode: "LAS");
    var nat = Nationality(id: 199, name: "United States");

    List<int> ages = [];
    var oco = OccupencyDetails(adults: 2, childrens: 0, ages: ages);

    List<OccupencyDetails> _ocHotels = [];
    _ocHotels.add(oco);

    return HotelRequest(
        destination: dest,
        checkIn: "${getFormatedDate(checkIn.toString())}",
        checkOut: "${getFormatedDate(checkOut.toString())}",
        rooms: occupancyDetails.length,
        nights: getNightCount(checkIn, checkOut),
        nationality: nat,
        occupencyDetails: occupancyDetails);
  }

  int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  int getNightCount(DateTime cin, DateTime cout) {
    final difference = daysBetween(cin, cout);
    return difference;
  }
}
