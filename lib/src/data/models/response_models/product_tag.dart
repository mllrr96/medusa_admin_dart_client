import '../index.dart';

class UserRetrieveProductTagsRes {
  final List<ProductTag>? tags;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveProductTagsRes({this.tags, this.limit, this.offset, this.count});
  factory UserRetrieveProductTagsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveProductTagsRes(
      tags: json['product_tags'] != null
          ? List<ProductTag>.from(
              json['product_tags'].map((x) => ProductTag.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
