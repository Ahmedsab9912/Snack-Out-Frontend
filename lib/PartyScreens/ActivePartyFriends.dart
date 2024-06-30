/// id : 1
/// username : "badr"
/// name : "Badr"
/// profileImage : "https://s3.amazonaws.com/snakemate.user.image/profile-pictures/1719228141280_1000017688.jpg"

class ActivePartyFriends {
  ActivePartyFriends({
      num? id, 
      String? username, 
      String? name, 
      String? profileImage,}){
    _id = id;
    _username = username;
    _name = name;
    _profileImage = profileImage;
}

  ActivePartyFriends.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _name = json['name'];
    _profileImage = json['profileImage'];
  }
  num? _id;
  String? _username;
  String? _name;
  String? _profileImage;
ActivePartyFriends copyWith({  num? id,
  String? username,
  String? name,
  String? profileImage,
}) => ActivePartyFriends(  id: id ?? _id,
  username: username ?? _username,
  name: name ?? _name,
  profileImage: profileImage ?? _profileImage,
);
  num? get id => _id;
  String? get username => _username;
  String? get name => _name;
  String? get profileImage => _profileImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['name'] = _name;
    map['profileImage'] = _profileImage;
    return map;
  }

}