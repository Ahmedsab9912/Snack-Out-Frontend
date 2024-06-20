/// id : 1
/// username : "ahmed"
/// email : "ahmedsab9912@gmail.com"
/// phoneNumber : "+923124989161"
/// profileImage : "https://s3.amazonaws.com/snakemate.user.image/profile-pictures/1718861274114_IMG-20240617-WA0001.jpg"
/// createdAt : "2024-06-11T10:56:08.465Z"
/// updatedAt : "2024-06-20T05:36:11.929Z"

class UsersModel {
  UsersModel({
      num? id, 
      String? username, 
      String? email, 
      String? phoneNumber, 
      String? profileImage, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _username = username;
    _email = email;
    _phoneNumber = phoneNumber;
    _profileImage = profileImage;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  UsersModel.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _profileImage = json['profileImage'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _username;
  String? _email;
  String? _phoneNumber;
  String? _profileImage;
  String? _createdAt;
  String? _updatedAt;
UsersModel copyWith({  num? id,
  String? username,
  String? email,
  String? phoneNumber,
  String? profileImage,
  String? createdAt,
  String? updatedAt,
}) => UsersModel(  id: id ?? _id,
  username: username ?? _username,
  email: email ?? _email,
  phoneNumber: phoneNumber ?? _phoneNumber,
  profileImage: profileImage ?? _profileImage,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String? get profileImage => _profileImage;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['phoneNumber'] = _phoneNumber;
    map['profileImage'] = _profileImage;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}