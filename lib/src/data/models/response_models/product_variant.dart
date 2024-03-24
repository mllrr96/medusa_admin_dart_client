import '../index.dart';

class RetrieveProductVariantsRes {
  final List<ProductVariant>? variants;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveProductVariantsRes(
      {this.variants, this.limit, this.offset, this.count});
  factory RetrieveProductVariantsRes.fromJson(Map<String, dynamic> json) {
    return RetrieveProductVariantsRes(
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
