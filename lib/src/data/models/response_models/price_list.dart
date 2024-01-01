import '../index.dart';

class UserDeletePricesRes {
  final List<String>? ids;

  /// The type of the object that was deleted.
  ///
  /// Default: "money-amount"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const UserDeletePricesRes({required this.deleted, this.ids, this.object});
  factory UserDeletePricesRes.fromJson(json) {
    return UserDeletePricesRes(
        deleted: json['deleted'] ?? false,
        ids: json['ids'],
        object: json['object']);
  }
}

class UserDeleteProductPricesRes {
  /// The price ids that have been deleted.
  final List<String>? ids;

  /// The type of the object that was deleted.
  ///
  /// Default: "money-amount"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const  UserDeleteProductPricesRes({required this.deleted, this.ids, this.object});
  factory UserDeleteProductPricesRes.fromJson(json) {
    return UserDeleteProductPricesRes(
        deleted: json['deleted'] ?? false,
        ids: List<String>.from(json['ids']),
        object: json['object']);
  }
}

class UserDeleteVariantPricesRes {
  /// The price ids that have been deleted.
  final List<String>? ids;

  /// The type of the object that was deleted.
  ///
  /// Default: "money-amount"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const UserDeleteVariantPricesRes({required this.deleted, this.ids, this.object});
  factory UserDeleteVariantPricesRes.fromJson(json) {
    return UserDeleteVariantPricesRes(
        deleted: json['deleted'] ?? false,
        ids: json['ids'],
        object: json['object']);
  }
}

class UserDeletePriceListRes {
  /// The ID of the deleted Price List.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "price-list"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const UserDeletePriceListRes({required this.deleted, this.id, this.object});
  factory UserDeletePriceListRes.fromJson(json) {
    return UserDeletePriceListRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}

class UserPriceListsRes {
  final List<PriceList>? priceLists;
  final int? limit;
  final int? offset;
  final int? count;
  const  UserPriceListsRes({this.priceLists, this.limit, this.offset, this.count});
  factory UserPriceListsRes.fromJson(Map<String, dynamic> json) {
    return UserPriceListsRes(
      priceLists: json['price_lists'] != null
          ? List<PriceList>.from(
              json['price_lists'].map((x) => PriceList.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserPriceListsProductsRes {
  final List<Product>? products;
  final int? limit;
  final int? offset;
  final int? count;
  const UserPriceListsProductsRes(
      {this.products, this.limit, this.offset, this.count});
  factory UserPriceListsProductsRes.fromJson(Map<String, dynamic> json) {
    return UserPriceListsProductsRes(
      products: json['products'] != null
          ? List<Product>.from(json['products'].map((x) => Product.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
