import '../products/index.dart';
import 'index.dart';
class DiscountConditionProductCollection {
  final String? productCollectionId;
  final String? conditionId;
  final ProductCollection? productCollection;
  final DiscountCondition? discountCondition;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Map<String, dynamic>? metadata;

  const DiscountConditionProductCollection({
    required this.productCollectionId,
    required this.conditionId,
    this.productCollection,
    this.discountCondition,
    this.createdAt,
    this.updatedAt,
    this.metadata,
  });

  factory DiscountConditionProductCollection.fromJson(
      Map<String, dynamic> json) {
    return DiscountConditionProductCollection(
      productCollectionId: json['product_collection_id'],
      conditionId: json['condition_id'],
      productCollection: json['product_collection'] != null
          ? ProductCollection.fromJson(json['product_collection'])
          : null,
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
    json['product_collection_id'] = productCollectionId;
    json['condition_id'] = conditionId;
    json['product_collection'] = productCollection?.toJson();
    json['discount_condition'] = discountCondition?.toJson();
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['metadata'] = metadata;
    return json;
  }
}
