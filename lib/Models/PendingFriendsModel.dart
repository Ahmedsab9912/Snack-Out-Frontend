/// id : 1
/// requesterId : 1
/// addresseeId : 2
/// status : "PENDING"
/// createdAt : "2024-06-10T09:00:56.471Z"
/// updatedAt : "2024-06-10T09:00:56.471Z"
/// user : {"id":2,"username":"ahmed","name":"Ahmed Baig","profileImage":"https://scontent.flhe3-2.fna.fbcdn.net/v/t1.6435-9/80731276_2595574770550474_603504671012683776_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFlU6p1AcrW4MGJYAMqYiNZnzn9idB1kkefOf2J0HWSR4distTDDOPuoOurF_QbbHcBFqzQedmKlT2IIEd_a3S1&_nc_ohc=7ajnN7rjIXQQ7kNvgGZe69q&_nc_ht=scontent.flhe3-2.fna&oh=00_AYDRxxoDXQz4RQmNr-L-innpMsKH5ikWzyQzpgBEXgibPg&oe=668E0EBA"}

class PendingFriendsModel {
  PendingFriendsModel({
      num? id, 
      num? requesterId, 
      num? addresseeId, 
      String? status, 
      String? createdAt, 
      String? updatedAt, 
      User? user,}){
    _id = id;
    _requesterId = requesterId;
    _addresseeId = addresseeId;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _user = user;
}

  PendingFriendsModel.fromJson(dynamic json) {
    _id = json['id'];
    _requesterId = json['requesterId'];
    _addresseeId = json['addresseeId'];
    _status = json['status'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  num? _id;
  num? _requesterId;
  num? _addresseeId;
  String? _status;
  String? _createdAt;
  String? _updatedAt;
  User? _user;
PendingFriendsModel copyWith({  num? id,
  num? requesterId,
  num? addresseeId,
  String? status,
  String? createdAt,
  String? updatedAt,
  User? user,
}) => PendingFriendsModel(  id: id ?? _id,
  requesterId: requesterId ?? _requesterId,
  addresseeId: addresseeId ?? _addresseeId,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  user: user ?? _user,
);
  num? get id => _id;
  num? get requesterId => _requesterId;
  num? get addresseeId => _addresseeId;
  String? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['requesterId'] = _requesterId;
    map['addresseeId'] = _addresseeId;
    map['status'] = _status;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : 2
/// username : "ahmed"
/// name : "Ahmed Baig"
/// profileImage : "https://scontent.flhe3-2.fna.fbcdn.net/v/t1.6435-9/80731276_2595574770550474_603504671012683776_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFlU6p1AcrW4MGJYAMqYiNZnzn9idB1kkefOf2J0HWSR4distTDDOPuoOurF_QbbHcBFqzQedmKlT2IIEd_a3S1&_nc_ohc=7ajnN7rjIXQQ7kNvgGZe69q&_nc_ht=scontent.flhe3-2.fna&oh=00_AYDRxxoDXQz4RQmNr-L-innpMsKH5ikWzyQzpgBEXgibPg&oe=668E0EBA"

class User {
  User({
      num? id, 
      String? username, 
      String? name, 
      String? profileImage,}){
    _id = id;
    _username = username;
    _name = name;
    _profileImage = profileImage;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _name = json['name'];
    _profileImage = json['profileImage'];
  }
  num? _id;
  String? _username;
  String? _name;
  String? _profileImage;
User copyWith({  num? id,
  String? username,
  String? name,
  String? profileImage,
}) => User(  id: id ?? _id,
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