import '../store_models/products/index.dart';

class UserCollectionsRes {
  final List<ProductCollection>? collections;
  final int? limit;
  final int? offset;
  final int? count;
  const UserCollectionsRes({this.collections, this.limit, this.offset, this.count});
  factory UserCollectionsRes.fromJson(json) {
    return UserCollectionsRes(
      collections: json['collections'] != null
          ? List<ProductCollection>.from(
              json['collections'].map((x) => ProductCollection.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserCollectionRes {
  ProductCollection? collection;

  UserCollectionRes.fromJson(json) {
    if (json['collection'] != null) {
      collection = ProductCollection.fromJson(json['collection']);
    }
  }
}

class UserCreateCollectionRes {
  ProductCollection? collection;
  UserCreateCollectionRes.fromJson(json) {
    if (json['collection'] != null) {
      collection = ProductCollection.fromJson(json['collection']);
    }
  }
}

class UserDeleteCollectionRes {
  /// The ID of the deleted Collection
  String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "product-collection"
  String? object;

  /// Whether the collection was deleted successfully or not.
  bool? deleted;

  UserDeleteCollectionRes.fromJson(json) {
    id = json['id'];
    object = json['object'];
    deleted = json['deleted'];
  }
}

class UserCollectionUpdateProductsRes {
  ProductCollection? collection;
  UserCollectionUpdateProductsRes.fromJson(json) {
    if (json['collection'] != null) {
      collection = ProductCollection.fromJson(json['collection']);
    }
  }
}

class UserCollectionRemoveProductsRes {
  /// The ID of the collection
  String? id;

  /// The type of object the removal was executed on
  ///
  /// Default: "product-collection"
  String? object;

  /// The IDs of the products removed from the collection
  List<String>? removedProducts;

  UserCollectionRemoveProductsRes.fromJson(json) {
    id = json['id'];
    object = json['object'];
    removedProducts = List<String>.from(json['removed_products']);
  }
}
