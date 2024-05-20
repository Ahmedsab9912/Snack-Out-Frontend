import 'package:flutter/foundation.dart';

class AddToCartProvider with ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  void addItem(String item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(String item) {
    _items.remove(item);
    notifyListeners();
  }

  int get itemCount => _items.length;

  int getItemCount(String item) {
    return _items.where((i) => i == item).length;
  }
}
