import '../index.dart';

class UserProductsListRes {
  final List<Product>? products;
  final int? limit;
  final int? offset;
  final int? count;
  const UserProductsListRes(
      {this.products, this.limit, this.offset, this.count});
  factory UserProductsListRes.fromJson(json) {
    return UserProductsListRes(
      products: json['products'] != null
          ? List<Product>.from(json['products'].map((x) => Product.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserPostSearchRes {
  List<dynamic>? hits;

  UserPostSearchRes.fromJson(json) {
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

class UserDeleteProductRes {
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
  const UserDeleteProductRes({this.id, this.deleted, this.object});
  factory UserDeleteProductRes.fromJson(Map<String, dynamic> json) {
    return UserDeleteProductRes(
      id: json['id'],
      deleted: json['deleted'],
      object: json['object'],
    );
  }
}
