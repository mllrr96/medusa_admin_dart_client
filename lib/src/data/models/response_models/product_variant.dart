import '../index.dart';

class UserRetrieveVariantInventoryRes {
  final ProductVariant? variant;

  UserRetrieveVariantInventoryRes(this.variant);

  factory UserRetrieveVariantInventoryRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveVariantInventoryRes(json['variant'] != null
        ? ProductVariant.fromJson(json['variant'])
        : null);
  }
}

class UserRetrieveProductVariantsRes {
  final List<ProductVariant>? variants;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveProductVariantsRes(
      {this.variants, this.limit, this.offset, this.count});
  factory UserRetrieveProductVariantsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveProductVariantsRes(
      variants: json['variants'] != null
          ? List<ProductVariant>.from(
              json['variants'].map((x) => ProductVariant.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
