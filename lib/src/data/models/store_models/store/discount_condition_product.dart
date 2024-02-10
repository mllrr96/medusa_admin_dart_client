import '../products/index.dart';
import 'index.dart';
class DiscountConditionProduct {
  final String? productId;
  final String? conditionId;
  final Product? product;
  final DiscountCondition? discountCondition;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Map<String, dynamic>? metadata;

  const DiscountConditionProduct({
    required this.productId,
    required this.conditionId,
    this.product,
    this.discountCondition,
    this.createdAt,
    this.updatedAt,
    this.metadata,
  });

  factory DiscountConditionProduct.fromJson(Map<String, dynamic> json) {
    return DiscountConditionProduct(
      productId: json['product_id'],
      conditionId: json['condition_id'],
      product:
          json['product'] != null ? Product.fromJson(json['product']) : null,
      discountCondition: json['discount_condition'] != null
          ? DiscountCondition.fromJson(json['discount_condition'])
          : null,
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      metadata: json['metadata'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['product_id'] = productId;
    json['condition_id'] = conditionId;
    json['product'] = product?.toJson();
    json['discount_condition'] = discountCondition?.toJson();
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['metadata'] = metadata;
    return json;
  }
}
