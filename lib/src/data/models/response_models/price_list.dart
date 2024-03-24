import '../index.dart';

class DeletePricesRes {
  final List<String>? ids;

  /// The type of the object that was deleted.
  ///
  /// Default: "money-amount"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const DeletePricesRes({required this.deleted, this.ids, this.object});
  factory DeletePricesRes.fromJson(json) {
    return DeletePricesRes(
        deleted: json['deleted'] ?? false,
        ids: json['ids'],
        object: json['object']);
  }
}

class DeleteProductPricesRes {
  /// The price ids that have been deleted.
  final List<String>? ids;

  /// The type of the object that was deleted.
  ///
  /// Default: "money-amount"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const  DeleteProductPricesRes({required this.deleted, this.ids, this.object});
  factory DeleteProductPricesRes.fromJson(json) {
    return DeleteProductPricesRes(
        deleted: json['deleted'] ?? false,
        ids: List<String>.from(json['ids']),
        object: json['object']);
  }
}

class DeleteVariantPricesRes {
  /// The price ids that have been deleted.
  final List<String>? ids;

  /// The type of the object that was deleted.
  ///
  /// Default: "money-amount"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const DeleteVariantPricesRes({required this.deleted, this.ids, this.object});
  factory DeleteVariantPricesRes.fromJson(json) {
    return DeleteVariantPricesRes(
        deleted: json['deleted'] ?? false,
        ids: json['ids'],
        object: json['object']);
  }
}

class DeletePriceListRes {
  /// The ID of the deleted Price List.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "price-list"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const DeletePriceListRes({required this.deleted, this.id, this.object});
  factory DeletePriceListRes.fromJson(json) {
    return DeletePriceListRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}

class PriceListsRes {
  final List<PriceList>? priceLists;
  final int? limit;
  final int? offset;
  final int? count;
  const  PriceListsRes({this.priceLists, this.limit, this.offset, this.count});
  factory PriceListsRes.fromJson(Map<String, dynamic> json) {
    return PriceListsRes(
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

class PriceListsProductsRes {
  final List<Product>? products;
  final int? limit;
  final int? offset;
  final int? count;
  const PriceListsProductsRes(
      {this.products, this.limit, this.offset, this.count});
  factory PriceListsProductsRes.fromJson(Map<String, dynamic> json) {
    return PriceListsProductsRes(
      products: json['products'] != null
          ? List<Product>.from(json['products'].map((x) => Product.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
