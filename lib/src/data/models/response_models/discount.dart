import '../index.dart';

class DeleteDiscountRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount"
  final String? object;

  /// Whether the discount was deleted successfully or not.
  final bool deleted;

  const DeleteDiscountRes({required this.deleted, this.id, this.object});

  factory DeleteDiscountRes.fromJson(json) {
    return DeleteDiscountRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}

class CreateDynamicCodeDiscountRes {
  final String? code;
  final num? usageLimit;
  final Map<String, dynamic>? metadata;
  const CreateDynamicCodeDiscountRes({this.code, this.usageLimit, this.metadata});
  factory CreateDynamicCodeDiscountRes.fromJson(Map<String, dynamic> json) {
    return CreateDynamicCodeDiscountRes(
      code: json['code'],
      usageLimit: json['usage_limit'],
      metadata: json['metadata'],
    );
  }
}

class RetrieveDiscountsRes {
  final List<Discount>? discounts;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveDiscountsRes(
      {this.discounts, this.limit, this.offset, this.count});
  factory RetrieveDiscountsRes.fromJson(Map<String, dynamic> json) {
    return RetrieveDiscountsRes(
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
