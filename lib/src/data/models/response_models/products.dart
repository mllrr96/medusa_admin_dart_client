import '../index.dart';

class StoreProductsListRes {
  final List<Product>? products;
  final int? count;
  final int? limit;
  final int? offset;
  StoreProductsListRes(this.products, {this.count, this.limit, this.offset});
  factory StoreProductsListRes.fromJson(json) {
    if (json['products'] != null) {
      var products = <Product>[];
      json['products'].forEach((v) {
        products.add(Product.fromJson(v));
      });
      return StoreProductsListRes(products,
          count: json['count'], limit: json['limit'], offset: json['offset']);
    }

    return StoreProductsListRes(null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['products'] = products?.map((e) => e.toJson()).toList();
    return data;
  }
}

class StoreProductsRes {
  final Product? product;
  StoreProductsRes({this.product});
  factory StoreProductsRes.fromJson(json) {
    return StoreProductsRes(
      product:
          json['product'] != null ? Product.fromJson(json['product']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product'] = product?.toJson();
    return data;
  }
}

class StorePostSearchRes {
  final List<dynamic>? hits;
  StorePostSearchRes({this.hits});
  factory StorePostSearchRes.fromJson(json) {
    return StorePostSearchRes(hits: json['hits']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hits'] = hits;
    return data;
  }
}
