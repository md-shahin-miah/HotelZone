class HotelResponse {
  late String resultCode;
  late int countHotels;
  late List<AvailableHotels> availableHotels;

  HotelResponse({required this.resultCode, required this.countHotels, required this.availableHotels});

  HotelResponse.fromJson(Map<String, dynamic> json) {
    resultCode = json['ResultCode'];
    countHotels = json['CountHotels'];
    if (json['available_hotels'] != null) {
      availableHotels = <AvailableHotels>[];
      json['available_hotels'].forEach((v) {
        availableHotels.add(new AvailableHotels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResultCode'] = this.resultCode;
    data['CountHotels'] = this.countHotels;
    if (this.availableHotels != null) {
      data['available_hotels'] = this.availableHotels.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AvailableHotels {
  late String iD;
  late String countryID;
  late String cityID;
  late String name;
  late int stars;
  late String type;
  late String address;
  late String image;
  late Descriptions descriptions;
  late MinPrice minPrice;
  late List<HotelOffers> hotelOffers;

  AvailableHotels(
      {required this.iD,
      required this.countryID,
      required this.cityID,
      required this.name,
      required this.stars,
      required this.type,
      required this.address,
      required this.image,
      required this.descriptions,
      required this.minPrice,
      required this.hotelOffers});

  AvailableHotels.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    countryID = json['CountryID'];
    cityID = json['CityID'];
    name = json['Name'];
    stars = json['Stars'];
    type = json['Type'];
    address = json['Address'];
    image = json['Image'];
    descriptions = (json['Descriptions'] != null ? new Descriptions.fromJson(json['Descriptions']) : null)!;
    minPrice = (json['MinPrice'] != null ? new MinPrice.fromJson(json['MinPrice']) : null)!;
    if (json['HotelOffers'] != null) {
      hotelOffers = <HotelOffers>[];
      json['HotelOffers'].forEach((v) {
        hotelOffers.add(new HotelOffers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CountryID'] = this.countryID;
    data['CityID'] = this.cityID;
    data['Name'] = this.name;
    data['Stars'] = this.stars;
    data['Type'] = this.type;
    data['Address'] = this.address;
    data['Image'] = this.image;
    if (this.descriptions != null) {
      data['Descriptions'] = this.descriptions.toJson();
    }
    if (this.minPrice != null) {
      data['MinPrice'] = this.minPrice.toJson();
    }
    if (this.hotelOffers != null) {
      data['HotelOffers'] = this.hotelOffers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Descriptions {
  late String shortDescription;
  late String fullDescription;
  late String locationDescription;
  late String facilities;

  Descriptions(
      {required this.shortDescription,
      required this.fullDescription,
      required this.locationDescription,
      required this.facilities});

  Descriptions.fromJson(Map<String, dynamic> json) {
    shortDescription = json['ShortDescription'];
    fullDescription = json['FullDescription'];
    locationDescription = json['Location_description'];
    facilities = json['Facilities'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ShortDescription'] = this.shortDescription;
    data['FullDescription'] = this.fullDescription;
    data['Location_description'] = this.locationDescription;
    data['Facilities'] = this.facilities;
    return data;
  }
}

class MinPrice {
  late String amount;
  late String currency;

  MinPrice({required this.amount, required this.currency});

  MinPrice.fromJson(Map<String, dynamic> json) {
    amount = json['Amount'];
    currency = json['Currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Amount'] = this.amount;
    data['Currency'] = this.currency;
    return data;
  }
}

class HotelOffers {
  late String name;
  late String board;
  late String boardBasis;
  late MinPrice price;
  late String roomCode;
  late String status;

  HotelOffers(
      {required this.name,
      required this.board,
      required this.boardBasis,
      required this.price,
      required this.roomCode,
      required this.status});

  HotelOffers.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    board = json['Board'];
    boardBasis = json['BoardBasis'];
    price = (json['Price'] != null ? new MinPrice.fromJson(json['Price']) : null)!;
    roomCode = json['RoomCode'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Board'] = this.board;
    data['BoardBasis'] = this.boardBasis;
    if (this.price != null) {
      data['Price'] = this.price.toJson();
    }
    data['RoomCode'] = this.roomCode;
    data['Status'] = this.status;
    return data;
  }
}
