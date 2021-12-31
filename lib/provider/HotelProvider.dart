import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hotelszone_flutter/common/Const.dart';
import 'package:hotelszone_flutter/common/Result.dart';
import 'package:hotelszone_flutter/model/CacheRequest.dart';
import 'package:hotelszone_flutter/model/HotelRequest.dart';
import 'package:hotelszone_flutter/model/HotelResponse.dart';
import 'package:http/http.dart' as http;

class HotelProvider with ChangeNotifier {
  var pageStatus = Result.Loading;

  List<AvailableHotels> _availableHotels = [];

  List<AvailableHotels> get availableHotels {
    return [..._availableHotels];
  }

  late HotelResponse _hotelResponse;

  HotelResponse get hotelResponse {
    return _hotelResponse;
  }

  int count = 1;

  bool isEmpty = false;

  void setLoading() {
    pageStatus = Result.Loading;
    notifyListeners();
  }

  fetchHotels(HotelRequest hotelRequest) async {
    try {
      isEmpty = false;
      count = 1;
      pageStatus = Result.Loading;

      _availableHotels.clear();

      var uri = Uri.http(BASE_URL, '/api/hotel_getavailability');

      print(uri);

      String body = json.encode(hotelRequest);

      final response = await http.post(
        uri,
        headers: {"Content-Type": "application/json"},
        body: body,
      );

      print("resonseeeee code ${response.statusCode}");
      print("resonseeeeeeeeeeeee " + response.body);

      if (response.statusCode == 200) {
        _hotelResponse = HotelResponse.fromJson(jsonDecode(response.body));
        _availableHotels = hotelResponse.availableHotels;
        pageStatus = Result.Success;
        notifyListeners();
      } else {
        pageStatus = Result.Error;
        notifyListeners();
      }
    } on SocketException catch (e) {
      pageStatus = Result.Failed;
      notifyListeners();
    } on Error catch (e) {
      pageStatus = Result.Error;
      notifyListeners();
    }
  }

  fetchCacheHotels(int offset) async {
    try {
      var cacheRequest = CacheRequest(
          resultCode: hotelResponse.resultCode,
          pageInfo: PageInfo(offset: offset));

      var uri = Uri.http(BASE_URL, '/api/hotel_getavailability_cache');

      print(uri);

      String body = json.encode(cacheRequest);

      final response = await http.post(
        uri,
        headers: {"Content-Type": "application/json"},
        body: body,
      );

      if (response.statusCode == 200) {
        var hotelResponse = HotelResponse.fromJson(jsonDecode(response.body));
        _availableHotels.addAll(hotelResponse.availableHotels);
        pageStatus = Result.Success;

        if (hotelResponse.availableHotels.isEmpty)
          isEmpty = true;
        else
          isEmpty = false;

        notifyListeners();
      } else {
        pageStatus = Result.Error;
        notifyListeners();
      }
    } on SocketException catch (e) {
      pageStatus = Result.Failed;
      notifyListeners();
    } on Error catch (e) {
      pageStatus = Result.Error;
      notifyListeners();
    }
  }
}
