import 'package:flutter_app30days/models/catalog.dart';

class CartModel {
  // catalog field
  CatalogModel _catalog;

  // Collection of IDs - store Ids of Each Item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get Items in the Cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get TOTAL Price
  num get totalPrice => items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item){
    _itemIds.add(item.id);
  }

  //Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }

}