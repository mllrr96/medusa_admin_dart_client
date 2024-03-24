import '../index.dart';

class ProductsListRes {
  final List<Product>? products;
  final int? limit;
  final int? offset;
  final int? count;
  const ProductsListRes(
      {this.products, this.limit, this.offset, this.count});
  factory ProductsListRes.fromJson(json) {
    return ProductsListRes(
      products: json['products'] != null
          ? List<Product>.from(json['products'].map((x) => Product.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class PostSearchRes {
  List<dynamic>? hits;

  PostSearchRes.fromJson(json) {
    if (json['hits'] != null) {
      hits = json['hits'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hits'] = hits;
    return data;
  }
}

class DeleteProductRes {
  /// The ID of the deleted Product.
  final String? id;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  final bool? deleted;

  /// The type of the object that was deleted.
  ///
  /// Default: "product"
  final String? object;
  const DeleteProductRes({this.id, this.deleted, this.object});
  factory DeleteProductRes.fromJson(Map<String, dynamic> json) {
    return DeleteProductRes(
      id: json['id'],
      deleted: json['deleted'],
      object: json['object'],
    );
  }
}
