class AllRestaurantsApi {
  AllRestaurantsApi({
    String? message,
    List<Data>? data,
  }) {
    _message = message;
    _data = data;
  }

  AllRestaurantsApi.fromJson(dynamic json) {
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }

  String? _message;
  List<Data>? _data;

  AllRestaurantsApi copyWith({
    String? message,
    List<Data>? data,
  }) =>
      AllRestaurantsApi(
        message: message ?? _message,
        data: data ?? _data,
      );

  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Data {
  Data({
    num? id,
    String? name,
    String? address,
    String? city,
    String? district,
    String? state,
    String? country,
    Coordinates? coordinates,
    String? phoneNumber,
    num? bankAccountId,
    String? openingTime,
    String? closingTime,
    dynamic details,
    dynamic parkingType,
    dynamic dressCode,
    dynamic rating,
    String? status,
    List<dynamic>? images,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _address = address;
    _city = city;
    _district = district;
    _state = state;
    _country = country;
    _coordinates = coordinates;
    _phoneNumber = phoneNumber;
    _bankAccountId = bankAccountId;
    _openingTime = openingTime;
    _closingTime = closingTime;
    _details = details;
    _parkingType = parkingType;
    _dressCode = dressCode;
    _rating = rating;
    _status = status;
    _images = images;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _address = json['address'];
    _city = json['city'];
    _district = json['district'];
    _state = json['state'];
    _country = json['country'];
    _coordinates = json['coordinates'] != null
        ? Coordinates.fromJson(json['coordinates'])
        : null;
    _phoneNumber = json['phoneNumber'];
    _bankAccountId = json['bankAccountId'];
    _openingTime = json['openingTime'];
    _closingTime = json['closingTime'];
    _details = json['details'];
    _parkingType = json['parkingType'];
    _dressCode = json['dressCode'];
    _rating = json['rating'];
    _status = json['status'];
    _images = json['images'] != null ? List<dynamic>.from(json['images']) : [];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }

  num? _id;
  String? _name;
  String? _address;
  String? _city;
  String? _district;
  String? _state;
  String? _country;
  Coordinates? _coordinates;
  String? _phoneNumber;
  num? _bankAccountId;
  String? _openingTime;
  String? _closingTime;
  dynamic _details;
  dynamic _parkingType;
  dynamic _dressCode;
  dynamic _rating;
  String? _status;
  List<dynamic>? _images;
  String? _createdAt;
  String? _updatedAt;

  Data copyWith({
    num? id,
    String? name,
    String? address,
    String? city,
    String? district,
    String? state,
    String? country,
    Coordinates? coordinates,
    String? phoneNumber,
    num? bankAccountId,
    String? openingTime,
    String? closingTime,
    dynamic details,
    dynamic parkingType,
    dynamic dressCode,
    dynamic rating,
    String? status,
    List<dynamic>? images,
    String? createdAt,
    String? updatedAt,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
        address: address ?? _address,
        city: city ?? _city,
        district: district ?? _district,
        state: state ?? _state,
        country: country ?? _country,
        coordinates: coordinates ?? _coordinates,
        phoneNumber: phoneNumber ?? _phoneNumber,
        bankAccountId: bankAccountId ?? _bankAccountId,
        openingTime: openingTime ?? _openingTime,
        closingTime: closingTime ?? _closingTime,
        details: details ?? _details,
        parkingType: parkingType ?? _parkingType,
        dressCode: dressCode ?? _dressCode,
        rating: rating ?? _rating,
        status: status ?? _status,
        images: images ?? _images,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );

  num? get id => _id;
  String? get name => _name;
  String? get address => _address;
  String? get city => _city;
  String? get district => _district;
  String? get state => _state;
  String? get country => _country;
  Coordinates? get coordinates => _coordinates;
  String? get phoneNumber => _phoneNumber;
  num? get bankAccountId => _bankAccountId;
  String? get openingTime => _openingTime;
  String? get closingTime => _closingTime;
  dynamic get details => _details;
  dynamic get parkingType => _parkingType;
  dynamic get dressCode => _dressCode;
  dynamic get rating => _rating;
  String? get status => _status;
  List<dynamic>? get images => _images;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['address'] = _address;
    map['city'] = _city;
    map['district'] = _district;
    map['state'] = _state;
    map['country'] = _country;
    if (_coordinates != null) {
      map['coordinates'] = _coordinates?.toJson();
    }
    map['phoneNumber'] = _phoneNumber;
    map['bankAccountId'] = _bankAccountId;
    map['openingTime'] = _openingTime;
    map['closingTime'] = _closingTime;
    map['details'] = _details;
    map['parkingType'] = _parkingType;
    map['dressCode'] = _dressCode;
    map['rating'] = _rating;
    map['status'] = _status;
    if (_images != null) {
      map['images'] = _images?.map((v) => v).toList();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

class Coordinates {
  Coordinates({
    num? latitude,
    num? longitude,
  }) {
    _latitude = latitude;
    _longitude = longitude;
  }

  Coordinates.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }

  num? _latitude;
  num? _longitude;

  Coordinates copyWith({
    num? latitude,
    num? longitude,
  }) =>
      Coordinates(
        latitude: latitude ?? _latitude,
        longitude: longitude ?? _longitude,
      );

  num? get latitude => _latitude;
  num? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }
}
