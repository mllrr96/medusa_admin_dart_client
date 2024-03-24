import '../index.dart';

class DeleteDiscountConditionRes {
  /// The ID of the deleted DiscountCondition
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount-condition"
  final String? object;

  /// Whether the discount condition was deleted successfully or not.
  final bool deleted;

  /// Represents a discount that can be applied to a cart for promotional purposes.
  final Discount? discount;

  const DeleteDiscountConditionRes({
    required this.deleted,
    this.id,
    this.object,
    this.discount,
  });

  factory DeleteDiscountConditionRes.fromJson(json) {
    return DeleteDiscountConditionRes(
      deleted: json['deleted'] ?? false,
      id: json['id'],
      object: json['object'],
      discount: json['discount'] != null ? Discount.fromJson(json['discount']) : null,
    );
  }
}
