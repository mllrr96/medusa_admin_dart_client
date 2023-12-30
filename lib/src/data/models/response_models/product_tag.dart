import '../index.dart';

class UserRetrieveTagsUsageNumberRes {
  final List<ProductTag> tags;
  UserRetrieveTagsUsageNumberRes(this.tags);

  factory UserRetrieveTagsUsageNumberRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveTagsUsageNumberRes(json['tags'] != null
        ? json['tags']!.map((v) => ProductTag.fromJson(v)).toList()
        : null);
  }
}

class UserRetrieveProductTagsRes {
  final List<ProductTag>? tags;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveProductTagsRes({this.tags, this.limit, this.offset, this.count});
  factory UserRetrieveProductTagsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveProductTagsRes(
      tags: json['tags'] != null
          ? List<ProductTag>.from(
              json['tags'].map((x) => ProductTag.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
