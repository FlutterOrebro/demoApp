import 'package:flutter/foundation.dart';

class ShoppingListProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> get items => _items;

  void addItem(String item) {
    if (item.isNotEmpty) {
      _items.add({
        'name': item,
        'isChecked': false,
      });
      notifyListeners();
    }
  }

  void toggleItem(int index) {
    _items[index]['isChecked'] = !_items[index]['isChecked'];
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}
