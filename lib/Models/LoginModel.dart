/// message : "Login successful"
/// data : {"vendorId":5,"username":"ahmed","accessToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjUsInZlbmRvciI6ZmFsc2UsImlhdCI6MTcxNzA3MDc2NywiZXhwIjoxNzE3MDc0MzY3fQ.OWEkMNg-ulDCECE8Bay0_RgsCpbEGeGMMj8QkNIVBvY","refreshToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjUsInZlbmRvciI6ZmFsc2UsImlhdCI6MTcxNzA3MDc2NywiZXhwIjoxNzE3Njc1NTY3fQ.ZEss2wusyzXqTzDgZINy6GWresQ8pb-ulH6_NQRak0A"}

class LoginModel {
  LoginModel({
      String? message, 
      Data? data,}){
    _message = message;
    _data = data;
}

  LoginModel.fromJson(dynamic json) {
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  Data? _data;
LoginModel copyWith({  String? message,
  Data? data,
}) => LoginModel(  message: message ?? _message,
  data: data ?? _data,
);
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// vendorId : 5
/// username : "ahmed"
/// accessToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjUsInZlbmRvciI6ZmFsc2UsImlhdCI6MTcxNzA3MDc2NywiZXhwIjoxNzE3MDc0MzY3fQ.OWEkMNg-ulDCECE8Bay0_RgsCpbEGeGMMj8QkNIVBvY"
/// refreshToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjUsInZlbmRvciI6ZmFsc2UsImlhdCI6MTcxNzA3MDc2NywiZXhwIjoxNzE3Njc1NTY3fQ.ZEss2wusyzXqTzDgZINy6GWresQ8pb-ulH6_NQRak0A"

class Data {
  Data({
      num? vendorId, 
      String? username, 
      String? accessToken, 
      String? refreshToken,}){
    _vendorId = vendorId;
    _username = username;
    _accessToken = accessToken;
    _refreshToken = refreshToken;
}

  Data.fromJson(dynamic json) {
    _vendorId = json['vendorId'];
    _username = json['username'];
    _accessToken = json['accessToken'];
    _refreshToken = json['refreshToken'];
  }
  num? _vendorId;
  String? _username;
  String? _accessToken;
  String? _refreshToken;
Data copyWith({  num? vendorId,
  String? username,
  String? accessToken,
  String? refreshToken,
}) => Data(  vendorId: vendorId ?? _vendorId,
  username: username ?? _username,
  accessToken: accessToken ?? _accessToken,
  refreshToken: refreshToken ?? _refreshToken,
);
  num? get vendorId => _vendorId;
  String? get username => _username;
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vendorId'] = _vendorId;
    map['username'] = _username;
    map['accessToken'] = _accessToken;
    map['refreshToken'] = _refreshToken;
    return map;
  }

}