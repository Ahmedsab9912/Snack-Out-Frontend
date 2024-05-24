/// message : "New user created"
/// data : {"newUser":{"id":19,"username":"aaaaa","name":"aaaa","email":"aaa@gmail.com","password":"$2b$15$devK6NQCGXXNmGsD7gB0Le.6lqNCNnLTYb6qZWexCxSEor94fbeRO","phoneNumber":"1234567890","phoneNumberVerification":false,"address":"123 Lhr","vendor":false,"roles":["user"],"createdAt":"2024-05-23T08:31:48.059Z","updatedAt":"2024-05-23T08:31:48.059Z","email_verification":false}}

class SignUpModel {
  SignUpModel({
      String? message, 
      Data? data,}){
    _message = message;
    _data = data;
}

  SignUpModel.fromJson(dynamic json) {
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  Data? _data;
SignUpModel copyWith({  String? message,
  Data? data,
}) => SignUpModel(  message: message ?? _message,
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

/// newUser : {"id":19,"username":"aaaaa","name":"aaaa","email":"aaa@gmail.com","password":"$2b$15$devK6NQCGXXNmGsD7gB0Le.6lqNCNnLTYb6qZWexCxSEor94fbeRO","phoneNumber":"1234567890","phoneNumberVerification":false,"address":"123 Lhr","vendor":false,"roles":["user"],"createdAt":"2024-05-23T08:31:48.059Z","updatedAt":"2024-05-23T08:31:48.059Z","email_verification":false}

class Data {
  Data({
      NewUser? newUser,}){
    _newUser = newUser;
}

  Data.fromJson(dynamic json) {
    _newUser = json['newUser'] != null ? NewUser.fromJson(json['newUser']) : null;
  }
  NewUser? _newUser;
Data copyWith({  NewUser? newUser,
}) => Data(  newUser: newUser ?? _newUser,
);
  NewUser? get newUser => _newUser;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_newUser != null) {
      map['newUser'] = _newUser?.toJson();
    }
    return map;
  }

}

/// id : 19
/// username : "aaaaa"
/// name : "aaaa"
/// email : "aaa@gmail.com"
/// password : "$2b$15$devK6NQCGXXNmGsD7gB0Le.6lqNCNnLTYb6qZWexCxSEor94fbeRO"
/// phoneNumber : "1234567890"
/// phoneNumberVerification : false
/// address : "123 Lhr"
/// vendor : false
/// roles : ["user"]
/// createdAt : "2024-05-23T08:31:48.059Z"
/// updatedAt : "2024-05-23T08:31:48.059Z"
/// email_verification : false

class NewUser {
  NewUser({
      num? id, 
      String? username, 
      String? name, 
      String? email, 
      String? password, 
      String? phoneNumber, 
      bool? phoneNumberVerification, 
      String? address, 
      bool? vendor, 
      List<String>? roles, 
      String? createdAt, 
      String? updatedAt, 
      bool? emailVerification,}){
    _id = id;
    _username = username;
    _name = name;
    _email = email;
    _password = password;
    _phoneNumber = phoneNumber;
    _phoneNumberVerification = phoneNumberVerification;
    _address = address;
    _vendor = vendor;
    _roles = roles;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _emailVerification = emailVerification;
}

  NewUser.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
    _phoneNumber = json['phoneNumber'];
    _phoneNumberVerification = json['phoneNumberVerification'];
    _address = json['address'];
    _vendor = json['vendor'];
    _roles = json['roles'] != null ? json['roles'].cast<String>() : [];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _emailVerification = json['email_verification'];
  }
  num? _id;
  String? _username;
  String? _name;
  String? _email;
  String? _password;
  String? _phoneNumber;
  bool? _phoneNumberVerification;
  String? _address;
  bool? _vendor;
  List<String>? _roles;
  String? _createdAt;
  String? _updatedAt;
  bool? _emailVerification;
NewUser copyWith({  num? id,
  String? username,
  String? name,
  String? email,
  String? password,
  String? phoneNumber,
  bool? phoneNumberVerification,
  String? address,
  bool? vendor,
  List<String>? roles,
  String? createdAt,
  String? updatedAt,
  bool? emailVerification,
}) => NewUser(  id: id ?? _id,
  username: username ?? _username,
  name: name ?? _name,
  email: email ?? _email,
  password: password ?? _password,
  phoneNumber: phoneNumber ?? _phoneNumber,
  phoneNumberVerification: phoneNumberVerification ?? _phoneNumberVerification,
  address: address ?? _address,
  vendor: vendor ?? _vendor,
  roles: roles ?? _roles,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  emailVerification: emailVerification ?? _emailVerification,
);
  num? get id => _id;
  String? get username => _username;
  String? get name => _name;
  String? get email => _email;
  String? get password => _password;
  String? get phoneNumber => _phoneNumber;
  bool? get phoneNumberVerification => _phoneNumberVerification;
  String? get address => _address;
  bool? get vendor => _vendor;
  List<String>? get roles => _roles;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  bool? get emailVerification => _emailVerification;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['name'] = _name;
    map['email'] = _email;
    map['password'] = _password;
    map['phoneNumber'] = _phoneNumber;
    map['phoneNumberVerification'] = _phoneNumberVerification;
    map['address'] = _address;
    map['vendor'] = _vendor;
    map['roles'] = _roles;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['email_verification'] = _emailVerification;
    return map;
  }

}