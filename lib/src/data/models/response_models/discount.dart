import '../index.dart';

class UserDeleteDiscountRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount"
  final String? object;

  /// Whether the discount was deleted successfully or not.
  final bool deleted;

  const UserDeleteDiscountRes({required this.deleted, this.id, this.object});

  factory UserDeleteDiscountRes.fromJson(json) {
    return UserDeleteDiscountRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}

class UserCreateDynamicCodeDiscountRes {
  final String? code;
  final num? usageLimit;
  final Map<String, dynamic>? metadata;
  const UserCreateDynamicCodeDiscountRes({this.code, this.usageLimit, this.metadata});
  factory UserCreateDynamicCodeDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserCreateDynamicCodeDiscountRes(
      code: json['code'],
      usageLimit: json['usage_limit'],
      metadata: json['metadata'],
    );
  }
}

class UserRetrieveDiscountsRes {
  final List<Discount>? discounts;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveDiscountsRes(
      {this.discounts, this.limit, this.offset, this.count});
  factory UserRetrieveDiscountsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveDiscountsRes(
      discounts: json['discounts'] != null
          ? List<Discount>.from(
              json['discounts'].map((x) => Discount.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
