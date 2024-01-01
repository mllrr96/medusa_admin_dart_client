import '../index.dart';

class UserRetrieveProductVariantsRes {
  final List<ProductVariant>? variants;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveProductVariantsRes(
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
