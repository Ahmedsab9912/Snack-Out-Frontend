/// message : "Login successful"
/// data : {"user":{"id":27,"username":"ahmed","name":"Ahmed Ejaz Baig","email":"ejazbaig700@gmail.com","password":"$2b$15$rKotrH9Qhe1cE7qsSXovDeivKZ9LG3lB.tyLD/w3Lg1ekO3cr.Yny","phoneNumber":"+923200470838","phoneNumberVerification":true,"roles":[],"createdAt":"2024-06-05T06:34:37.149Z","updatedAt":"2024-06-05T06:40:00.666Z","emailVerification":true,"profileImage":"https://i2.pickpik.com/photos/711/14/431/smile-profile-face-male-preview.jpg"},"accessToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI3LCJ2ZW5kb3IiOmZhbHNlLCJpYXQiOjE3MTc1NzQyMzMsImV4cCI6MTcxNzU3NzgzM30.D7dvkk6OzHZNb-8KkYHP0gMCvPTuOeTmLQuAXf_Bu9k","refreshToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI3LCJ2ZW5kb3IiOmZhbHNlLCJpYXQiOjE3MTc1NzQyMzMsImV4cCI6MTcxODE3OTAzM30.7vLXTIi6Rj-F7KC0m6mIQe4eJcC9ZhmuZ4uHQ4kyOvI"}

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

/// user : {"id":27,"username":"ahmed","name":"Ahmed Ejaz Baig","email":"ejazbaig700@gmail.com","password":"$2b$15$rKotrH9Qhe1cE7qsSXovDeivKZ9LG3lB.tyLD/w3Lg1ekO3cr.Yny","phoneNumber":"+923200470838","phoneNumberVerification":true,"roles":[],"createdAt":"2024-06-05T06:34:37.149Z","updatedAt":"2024-06-05T06:40:00.666Z","emailVerification":true,"profileImage":"https://i2.pickpik.com/photos/711/14/431/smile-profile-face-male-preview.jpg"}
/// accessToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI3LCJ2ZW5kb3IiOmZhbHNlLCJpYXQiOjE3MTc1NzQyMzMsImV4cCI6MTcxNzU3NzgzM30.D7dvkk6OzHZNb-8KkYHP0gMCvPTuOeTmLQuAXf_Bu9k"
/// refreshToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI3LCJ2ZW5kb3IiOmZhbHNlLCJpYXQiOjE3MTc1NzQyMzMsImV4cCI6MTcxODE3OTAzM30.7vLXTIi6Rj-F7KC0m6mIQe4eJcC9ZhmuZ4uHQ4kyOvI"

class Data {
  Data({
      User? user, 
      String? accessToken, 
      String? refreshToken,}){
    _user = user;
    _accessToken = accessToken;
    _refreshToken = refreshToken;
}

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _accessToken = json['accessToken'];
    _refreshToken = json['refreshToken'];
  }
  User? _user;
  String? _accessToken;
  String? _refreshToken;
Data copyWith({  User? user,
  String? accessToken,
  String? refreshToken,
}) => Data(  user: user ?? _user,
  accessToken: accessToken ?? _accessToken,
  refreshToken: refreshToken ?? _refreshToken,
);
  User? get user => _user;
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['accessToken'] = _accessToken;
    map['refreshToken'] = _refreshToken;
    return map;
  }

}

/// id : 27
/// username : "ahmed"
/// name : "Ahmed Ejaz Baig"
/// email : "ejazbaig700@gmail.com"
/// password : "$2b$15$rKotrH9Qhe1cE7qsSXovDeivKZ9LG3lB.tyLD/w3Lg1ekO3cr.Yny"
/// phoneNumber : "+923200470838"
/// phoneNumberVerification : true
/// roles : []
/// createdAt : "2024-06-05T06:34:37.149Z"
/// updatedAt : "2024-06-05T06:40:00.666Z"
/// emailVerification : true
/// profileImage : "https://i2.pickpik.com/photos/711/14/431/smile-profile-face-male-preview.jpg"

class User {
  User({
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
      bool? emailVerification, 
      String? profileImage,}){
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
    _profileImage = profileImage;
}

  User.fromJson(Map<String, dynamic> json) {
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
        _roles?.add(v.toString()); // Assuming roles are strings
      });
    }
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _emailVerification = json['emailVerification'];
    _profileImage = json['profileImage'];
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
  String? _profileImage;
User copyWith({  num? id,
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
  String? profileImage,
}) => User(  id: id ?? _id,
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
  profileImage: profileImage ?? _profileImage,
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
  String? get profileImage => _profileImage;

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
    map['profileImage'] = _profileImage;
    return map;
  }

}