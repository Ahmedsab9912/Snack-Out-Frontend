class CreateMenuItemDto {
  final String itemName;
  final double price;
  final bool available;
  final int servings;
  final String description;
  final int restaurantId;
  final int cuisineId;
  final String image;

  CreateMenuItemDto({
    required this.itemName,
    required this.price,
    required this.available,
    required this.servings,
    required this.description,
    required this.restaurantId,
    required this.cuisineId,
    required this.image,
  });

  factory CreateMenuItemDto.fromJson(Map<String, dynamic> json) {
    return CreateMenuItemDto(
      itemName: json['itemName'],
      price: json['price'].toDouble(),
      available: json['available'],
      servings: json['servings'],
      description: json['description'],
      restaurantId: json['restaurantId'],
      cuisineId: json['cuisineId'],
      image: json['image'],
    );
  }
}
