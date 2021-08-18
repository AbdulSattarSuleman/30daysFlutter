// ignore_for_file: unnecessary_null_comparison

import 'package:day3/models/catalog.dart';

class CartModel {
  // Catalog Field
  late CatalogModel _catalog;

  // Collection of IDs - Store Ids of each item
  final List<int> _itemIds = [];

  // get Catalog
  CatalogModel get catalog => _catalog;

  // Set catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get Items in Cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // get Total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
