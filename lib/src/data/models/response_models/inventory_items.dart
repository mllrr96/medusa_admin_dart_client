import '../index.dart';

class UserInventoryItemRes {
  final InventoryItem? inventoryItem;

  UserInventoryItemRes(this.inventoryItem);
  factory UserInventoryItemRes.fromJson(Map<String, dynamic> json) {
    return UserInventoryItemRes(json['inventory_item'] != null
        ? InventoryItem.fromJson(json['inventory_item'])
        : null);
  }
}

class UserInventoryItemsRes {
  final List<InventoryItem>? inventoryItems;
  final int? limit;
  final int? offset;
  final int? count;
  UserInventoryItemsRes(
      {this.inventoryItems, this.limit, this.offset, this.count});
  factory UserInventoryItemsRes.fromJson(Map<String, dynamic> json) {
    return UserInventoryItemsRes(
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

class UserStockLevelsOfLocationRes {
  /// List of stock levels at a given location
  final List<LocationLevel>? locationLevels;

  /// The id of the location
  final String? id;

  UserStockLevelsOfLocationRes({
    this.id,
    this.locationLevels,
  });

  factory UserStockLevelsOfLocationRes.fromJson(Map<String, dynamic> json) {
    List<LocationLevel>? locationLevels;

    if (json['location_levels'] != null) {
      locationLevels = <LocationLevel>[];
      json['location_levels']
          ?.forEach((v) => locationLevels?.add(LocationLevel.fromJson(v)));
    }

    return UserStockLevelsOfLocationRes(
      id: json['id'],
      locationLevels: locationLevels,
    );
  }
}

class UserDeleteInventoryItemRes {
  /// The ID of the deleted Inventory Item.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "inventory_item"
  final String? object;

  /// Whether or not the Inventory Item was deleted.
  final bool deleted;
  UserDeleteInventoryItemRes({required this.deleted, this.id, this.object});
  factory UserDeleteInventoryItemRes.fromJson(json) {
    return UserDeleteInventoryItemRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
