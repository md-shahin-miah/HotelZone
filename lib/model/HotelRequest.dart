class HotelRequest {
  late Destination destination;
  late String checkIn;
  late String checkOut;
  late int rooms;
  late int nights;
  late Nationality nationality;
  late List<OccupencyDetails> occupencyDetails;

  HotelRequest(
      {required this.destination,
      required this.checkIn,
      required this.checkOut,
      required this.rooms,
      required this.nights,
      required this.nationality,
      required this.occupencyDetails});

  HotelRequest.fromJson(Map<String, dynamic> json) {
    destination = (json['destination'] != null ? new Destination.fromJson(json['destination']) : null)!;
    checkIn = json['check_in'];
    checkOut = json['check_out'];
    rooms = json['rooms'];
    nights = json['nights'];
    nationality = (json['nationality'] != null ? new Nationality.fromJson(json['nationality']) : null)!;
    if (json['occupency_details'] != null) {
      occupencyDetails = <OccupencyDetails>[];
      json['occupency_details'].forEach((v) {
        occupencyDetails.add(new OccupencyDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.destination != null) {
      data['destination'] = this.destination.toJson();
    }
    data['check_in'] = this.checkIn;
    data['check_out'] = this.checkOut;
    data['rooms'] = this.rooms;
    data['nights'] = this.nights;
    if (this.nationality != null) {
      data['nationality'] = this.nationality.toJson();
    }
    if (this.occupencyDetails != null) {
      data['occupency_details'] = this.occupencyDetails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Destination {
  late int cityId;
  late String cityCode;

  Destination({required this.cityId, required this.cityCode});

  Destination.fromJson(Map<String, dynamic> json) {
    cityId = json['city_id'];
    cityCode = json['city_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city_id'] = this.cityId;
    data['city_code'] = this.cityCode;
    return data;
  }
}

class Nationality {
  late int id;
  late String name;

  Nationality({required this.id, required this.name});

  Nationality.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class OccupencyDetails {
  late int adults;
  late int childrens;
  late List<int> ages;

  OccupencyDetails({required this.adults, required this.childrens, required this.ages});

  OccupencyDetails.fromJson(Map<String, dynamic> json) {
    adults = json['adults'];
    childrens = json['childrens'];
    ages = json['ages'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adults'] = this.adults;
    data['childrens'] = this.childrens;
    data['ages'] = this.ages;
    return data;
  }
}
