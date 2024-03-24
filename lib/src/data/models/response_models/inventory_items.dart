import '../index.dart';

class InventoryItemsRes {
  final List<InventoryItem>? inventoryItems;
  final int? limit;
  final int? offset;
  final int? count;
  const InventoryItemsRes(
      {this.inventoryItems, this.limit, this.offset, this.count});
  factory InventoryItemsRes.fromJson(Map<String, dynamic> json) {
    return InventoryItemsRes(
      inventoryItems: json['inventory_items'] != null
          ? List<InventoryItem>.from(
              json['inventory_items'].map((x) => InventoryItem.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class StockLevelsOfLocationRes {
  /// List of stock levels at a given location
  final List<LocationLevel>? locationLevels;

  /// The id of the location
  final String? id;

  const StockLevelsOfLocationRes({
    this.id,
    this.locationLevels,
  });

  factory StockLevelsOfLocationRes.fromJson(Map<String, dynamic> json) {
    List<LocationLevel>? locationLevels;

    if (json['location_levels'] != null) {
      locationLevels = <LocationLevel>[];
      json['location_levels']
          ?.forEach((v) => locationLevels?.add(LocationLevel.fromJson(v)));
    }

    return StockLevelsOfLocationRes(
      id: json['id'],
      locationLevels: locationLevels,
    );
  }
}

class DeleteInventoryItemRes {
  /// The ID of the deleted Inventory Item.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "inventory_item"
  final String? object;

  /// Whether or not the Inventory Item was deleted.
  final bool deleted;
  const DeleteInventoryItemRes({required this.deleted, this.id, this.object});
  factory DeleteInventoryItemRes.fromJson(json) {
    return DeleteInventoryItemRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
