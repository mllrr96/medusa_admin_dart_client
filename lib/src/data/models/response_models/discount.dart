import '../index.dart';

class UserAddRegionDiscountRes {
  final Discount? discount;
  UserAddRegionDiscountRes(this.discount);
  factory UserAddRegionDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserAddRegionDiscountRes(
        json['discount'] != null ? Discount.fromJson(json['discount']) : null);
  }
}

class UserRemoveRegionDiscountRes {
  final Discount? discount;
  UserRemoveRegionDiscountRes(this.discount);
  factory UserRemoveRegionDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserRemoveRegionDiscountRes(
        json['discount'] != null ? Discount.fromJson(json['discount']) : null);
  }
}

class UserCreateDiscountRes {
  final Discount? discount;
  UserCreateDiscountRes(this.discount);
  factory UserCreateDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserCreateDiscountRes(
        json['discount'] != null ? Discount.fromJson(json['discount']) : null);
  }
}

class UserRetrieveDiscountRes {
  final Discount? discount;
  UserRetrieveDiscountRes(this.discount);
  factory UserRetrieveDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveDiscountRes(
        json['discount'] != null ? Discount.fromJson(json['discount']) : null);
  }
}

class UserUpdateDiscountRes {
  final Discount? discount;
  UserUpdateDiscountRes(this.discount);
  factory UserUpdateDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserUpdateDiscountRes(
        json['discount'] != null ? Discount.fromJson(json['discount']) : null);
  }
}

class UserDeleteDiscountRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount"
  final String? object;

  /// Whether the discount was deleted successfully or not.
  final bool deleted;

  UserDeleteDiscountRes({required this.deleted, this.id, this.object});

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
  UserCreateDynamicCodeDiscountRes({this.code, this.usageLimit, this.metadata});
  factory UserCreateDynamicCodeDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserCreateDynamicCodeDiscountRes(
      code: json['code'],
      usageLimit: json['usage_limit'],
      metadata: json['metadata'],
    );
  }
}

class UserGetDiscountByCodeRes {
  final Discount? discount;
  UserGetDiscountByCodeRes(this.discount);
  factory UserGetDiscountByCodeRes.fromJson(Map<String, dynamic> json) {
    return UserGetDiscountByCodeRes(
        json['discount'] != null ? Discount.fromJson(json['discount']) : null);
  }
}

class UserDeleteDynamicCodeDiscountRes {
  final Discount? discount;
  UserDeleteDynamicCodeDiscountRes(this.discount);
  factory UserDeleteDynamicCodeDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserDeleteDynamicCodeDiscountRes(
        json['discount'] != null ? Discount.fromJson(json['discount']) : null);
  }
}

class UserUpdateConditionDiscountRes {
  final Discount? discount;
  UserUpdateConditionDiscountRes(this.discount);
  factory UserUpdateConditionDiscountRes.fromJson(Map<String, dynamic> json) {
    return UserUpdateConditionDiscountRes(
        json['discount'] != null ? Discount.fromJson(json['discount']) : null);
  }
}

class UserRetrieveDiscountsRes {
  final List<Discount>? discounts;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveDiscountsRes(
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
