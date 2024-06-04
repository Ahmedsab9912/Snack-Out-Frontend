/// message : "New user created"
/// data : {"newUser":{"id":4,"username":"ahmed","name":"Ahmed Baig","email":"ejazbaig700@gmail.com","password":"$2b$15$QkAVO5UEqWUPxDRBIIwwteuB63B/BqUzNUwVolOcbg4ZWeQP1IPbq","phoneNumber":"+923200470838","phoneNumberVerification":false,"roles":[],"createdAt":"2024-06-04T07:39:48.086Z","updatedAt":"2024-06-04T07:39:48.086Z","emailVerification":false}}

class SignupModel {
  SignupModel({
      String? message, 
      Data? data,}){
    _message = message;
    _data = data;
}

  SignupModel.fromJson(dynamic json) {
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  Data? _data;
SignupModel copyWith({  String? message,
  Data? data,
}) => SignupModel(  message: message ?? _message,
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

/// newUser : {"id":4,"username":"ahmed","name":"Ahmed Baig","email":"ejazbaig700@gmail.com","password":"$2b$15$QkAVO5UEqWUPxDRBIIwwteuB63B/BqUzNUwVolOcbg4ZWeQP1IPbq","phoneNumber":"+923200470838","phoneNumberVerification":false,"roles":[],"createdAt":"2024-06-04T07:39:48.086Z","updatedAt":"2024-06-04T07:39:48.086Z","emailVerification":false}

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

/// id : 4
/// username : "ahmed"
/// name : "Ahmed Baig"
/// email : "ejazbaig700@gmail.com"
/// password : "$2b$15$QkAVO5UEqWUPxDRBIIwwteuB63B/BqUzNUwVolOcbg4ZWeQP1IPbq"
/// phoneNumber : "+923200470838"
/// phoneNumberVerification : false
/// roles : []
/// createdAt : "2024-06-04T07:39:48.086Z"
/// updatedAt : "2024-06-04T07:39:48.086Z"
/// emailVerification : false

class NewUser {
  NewUser({
      num? id, 
      String? username, 
      String? name, 
      String? email, 
      String? password, 
      String? phoneNumber, 
      bool? phoneNumberVerification, 
      List<dynamic>? roles, 
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
    if (json['roles'] != null) {
      _roles = [];
      json['roles'].forEach((v) {
        _roles?.add(v as Map<String, dynamic>); // Assuming roles is a list of objects
      });
    }
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _emailVerification = json['emailVerification'];
  }
  num? _id;
  String? _username;
  String? _name;
  String? _email;
  String? _password;
  String? _phoneNumber;
  bool? _phoneNumberVerification;
  List<dynamic>? _roles;
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
  List<dynamic>? roles,
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
  List<dynamic>? get roles => _roles;
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
    if (_roles != null) {
      map['roles'] = _roles?.map((v) => v.toJson()).toList();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['emailVerification'] = _emailVerification;
    return map;
  }

}