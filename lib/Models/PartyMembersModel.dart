/// message : "Party found"
/// data : {"id":52,"hostId":2,"inviteCode":"2e8a29c5","name":null,"description":null,"isHostPaying":true,"createdAt":"2024-06-24T11:17:00.165Z","updatedAt":"2024-06-24T11:17:00.165Z","partyMembers":[{"id":1,"email":"badrkmc@gmail.com","username":"badr","phoneNumber":"+923164715536","profileImage":null},{"id":2,"email":"ejazbaig700@gmail.com","username":"ahmed","phoneNumber":"+923200470838","profileImage":"https://s3.amazonaws.com/snakemate.user.image/profile-pictures/1719206219057_36d7a529-0e94-425a-92fc-a388c41d28e97340990561480456595.jpg"}]}

class PartyMembersModel {
  PartyMembersModel({
      String? message, 
      Data? data,}){
    _message = message;
    _data = data;
}

  PartyMembersModel.fromJson(dynamic json) {
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  Data? _data;
PartyMembersModel copyWith({  String? message,
  Data? data,
}) => PartyMembersModel(  message: message ?? _message,
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

/// id : 52
/// hostId : 2
/// inviteCode : "2e8a29c5"
/// name : null
/// description : null
/// isHostPaying : true
/// createdAt : "2024-06-24T11:17:00.165Z"
/// updatedAt : "2024-06-24T11:17:00.165Z"
/// partyMembers : [{"id":1,"email":"badrkmc@gmail.com","username":"badr","phoneNumber":"+923164715536","profileImage":null},{"id":2,"email":"ejazbaig700@gmail.com","username":"ahmed","phoneNumber":"+923200470838","profileImage":"https://s3.amazonaws.com/snakemate.user.image/profile-pictures/1719206219057_36d7a529-0e94-425a-92fc-a388c41d28e97340990561480456595.jpg"}]

class Data {
  Data({
      num? id, 
      num? hostId, 
      String? inviteCode, 
      dynamic name, 
      dynamic description, 
      bool? isHostPaying, 
      String? createdAt, 
      String? updatedAt, 
      List<PartyMembers>? partyMembers,}){
    _id = id;
    _hostId = hostId;
    _inviteCode = inviteCode;
    _name = name;
    _description = description;
    _isHostPaying = isHostPaying;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _partyMembers = partyMembers;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _hostId = json['hostId'];
    _inviteCode = json['inviteCode'];
    _name = json['name'];
    _description = json['description'];
    _isHostPaying = json['isHostPaying'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    if (json['partyMembers'] != null) {
      _partyMembers = [];
      json['partyMembers'].forEach((v) {
        _partyMembers?.add(PartyMembers.fromJson(v));
      });
    }
  }
  num? _id;
  num? _hostId;
  String? _inviteCode;
  dynamic _name;
  dynamic _description;
  bool? _isHostPaying;
  String? _createdAt;
  String? _updatedAt;
  List<PartyMembers>? _partyMembers;
Data copyWith({  num? id,
  num? hostId,
  String? inviteCode,
  dynamic name,
  dynamic description,
  bool? isHostPaying,
  String? createdAt,
  String? updatedAt,
  List<PartyMembers>? partyMembers,
}) => Data(  id: id ?? _id,
  hostId: hostId ?? _hostId,
  inviteCode: inviteCode ?? _inviteCode,
  name: name ?? _name,
  description: description ?? _description,
  isHostPaying: isHostPaying ?? _isHostPaying,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  partyMembers: partyMembers ?? _partyMembers,
);
  num? get id => _id;
  num? get hostId => _hostId;
  String? get inviteCode => _inviteCode;
  dynamic get name => _name;
  dynamic get description => _description;
  bool? get isHostPaying => _isHostPaying;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<PartyMembers>? get partyMembers => _partyMembers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['hostId'] = _hostId;
    map['inviteCode'] = _inviteCode;
    map['name'] = _name;
    map['description'] = _description;
    map['isHostPaying'] = _isHostPaying;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_partyMembers != null) {
      map['partyMembers'] = _partyMembers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// email : "badrkmc@gmail.com"
/// username : "badr"
/// phoneNumber : "+923164715536"
/// profileImage : null

class PartyMembers {
  PartyMembers({
      num? id, 
      String? email, 
      String? username, 
      String? phoneNumber, 
      dynamic profileImage,}){
    _id = id;
    _email = email;
    _username = username;
    _phoneNumber = phoneNumber;
    _profileImage = profileImage;
}

  PartyMembers.fromJson(dynamic json) {
    _id = json['id'];
    _email = json['email'];
    _username = json['username'];
    _phoneNumber = json['phoneNumber'];
    _profileImage = json['profileImage'];
  }
  num? _id;
  String? _email;
  String? _username;
  String? _phoneNumber;
  dynamic _profileImage;
PartyMembers copyWith({  num? id,
  String? email,
  String? username,
  String? phoneNumber,
  dynamic profileImage,
}) => PartyMembers(  id: id ?? _id,
  email: email ?? _email,
  username: username ?? _username,
  phoneNumber: phoneNumber ?? _phoneNumber,
  profileImage: profileImage ?? _profileImage,
);
  num? get id => _id;
  String? get email => _email;
  String? get username => _username;
  String? get phoneNumber => _phoneNumber;
  dynamic get profileImage => _profileImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['email'] = _email;
    map['username'] = _username;
    map['phoneNumber'] = _phoneNumber;
    map['profileImage'] = _profileImage;
    return map;
  }

}