import '../store_models/products/index.dart';

class CollectionsRes {
  final List<ProductCollection>? collections;
  final int? limit;
  final int? offset;
  final int? count;
  const CollectionsRes({this.collections, this.limit, this.offset, this.count});
  factory CollectionsRes.fromJson(json) {
    return CollectionsRes(
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

class CollectionRes {
  ProductCollection? collection;

  CollectionRes.fromJson(json) {
    if (json['collection'] != null) {
      collection = ProductCollection.fromJson(json['collection']);
    }
  }
}

class CreateCollectionRes {
  ProductCollection? collection;
  CreateCollectionRes.fromJson(json) {
    if (json['collection'] != null) {
      collection = ProductCollection.fromJson(json['collection']);
    }
  }
}

class DeleteCollectionRes {
  /// The ID of the deleted Collection
  String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "product-collection"
  String? object;

  /// Whether the collection was deleted successfully or not.
  bool? deleted;

  DeleteCollectionRes.fromJson(json) {
    id = json['id'];
    object = json['object'];
    deleted = json['deleted'];
  }
}

class CollectionUpdateProductsRes {
  ProductCollection? collection;
  CollectionUpdateProductsRes.fromJson(json) {
    if (json['collection'] != null) {
      collection = ProductCollection.fromJson(json['collection']);
    }
  }
}

class CollectionRemoveProductsRes {
  /// The ID of the collection
  String? id;

  /// The type of object the removal was executed on
  ///
  /// Default: "product-collection"
  String? object;

  /// The IDs of the products removed from the collection
  List<String>? removedProducts;

  CollectionRemoveProductsRes.fromJson(json) {
    id = json['id'];
    object = json['object'];
    removedProducts = List<String>.from(json['removed_products']);
  }
}
