/// id : 1
/// itemName : "Badami Handi"
/// price : 500
/// available : true
/// servings : 521
/// description : "Aliquam fuga dolor."
/// image : "https://s3.amazonaws.com/snakemate.user.image/menu-pictures/1718107795265_flower.jpg"
/// restaurantId : 1
/// cuisineId : 1
/// createdAt : "2024-06-11T11:58:40.017Z"
/// updatedAt : "2024-06-11T12:10:01.128Z"

class MenuItemsModel {
  MenuItemsModel({
      num? id, 
      String? itemName, 
      num? price, 
      bool? available, 
      num? servings, 
      String? description, 
      String? image, 
      num? restaurantId, 
      num? cuisineId, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _itemName = itemName;
    _price = price;
    _available = available;
    _servings = servings;
    _description = description;
    _image = image;
    _restaurantId = restaurantId;
    _cuisineId = cuisineId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  MenuItemsModel.fromJson(dynamic json) {
    _id = json['id'];
    _itemName = json['itemName'];
    _price = json['price'];
    _available = json['available'];
    _servings = json['servings'];
    _description = json['description'];
    _image = json['image'];
    _restaurantId = json['restaurantId'];
    _cuisineId = json['cuisineId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _itemName;
  num? _price;
  bool? _available;
  num? _servings;
  String? _description;
  String? _image;
  num? _restaurantId;
  num? _cuisineId;
  String? _createdAt;
  String? _updatedAt;
MenuItemsModel copyWith({  num? id,
  String? itemName,
  num? price,
  bool? available,
  num? servings,
  String? description,
  String? image,
  num? restaurantId,
  num? cuisineId,
  String? createdAt,
  String? updatedAt,
}) => MenuItemsModel(  id: id ?? _id,
  itemName: itemName ?? _itemName,
  price: price ?? _price,
  available: available ?? _available,
  servings: servings ?? _servings,
  description: description ?? _description,
  image: image ?? _image,
  restaurantId: restaurantId ?? _restaurantId,
  cuisineId: cuisineId ?? _cuisineId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get itemName => _itemName;
  num? get price => _price;
  bool? get available => _available;
  num? get servings => _servings;
  String? get description => _description;
  String? get image => _image;
  num? get restaurantId => _restaurantId;
  num? get cuisineId => _cuisineId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['itemName'] = _itemName;
    map['price'] = _price;
    map['available'] = _available;
    map['servings'] = _servings;
    map['description'] = _description;
    map['image'] = _image;
    map['restaurantId'] = _restaurantId;
    map['cuisineId'] = _cuisineId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}