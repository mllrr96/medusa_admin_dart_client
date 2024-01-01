import '../products/index.dart';
import 'index.dart';
import '../../../enum/enums.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/discount_condition.g.dart';

@CopyWith()
class DiscountCondition {
  final String? id;
  final DiscountConditionType? type;
  final DiscountConditionOperator? operator;
  final String? discountRuleId;
  final DiscountRule? discountRule;
  final List<Product>? products;
  final List<ProductType>? productTypes;
  final List<ProductTag>? productTags;
  final List<ProductCollection>? productCollections;
  final List<CustomerGroup>? customerGroups;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final Map<String, dynamic>? metadata;

  const DiscountCondition({
    this.id,
    required this.type,
    required this.operator,
    required this.discountRuleId,
    this.discountRule,
    this.products,
    this.productTypes,
    this.productTags,
    this.productCollections,
    this.customerGroups,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

  factory DiscountCondition.fromJson(Map<String, dynamic> json) {
    return DiscountCondition(
      id: json['id'],
      type: DiscountConditionType.values
          .firstWhere((e) => e.value == (json['type'] ?? '')),
      operator: DiscountConditionOperator.values.firstWhere(
          (e) => e.value == (json['operator'] ?? ''),
          orElse: () => DiscountConditionOperator.inn),
      discountRuleId: json['discount_rule_id'],
      discountRule: json['discount_rule'] != null
          ? DiscountRule.fromJson(json['discount_rule'])
          : null,
      products: json['products'].map((e) => Product.fromJson(e)).toList(),
      productTypes:
          json['product_types'].map((e) => ProductType.fromJson(e)).toList(),
      productTags:
          json['product_tags'].map((e) => ProductTag.fromJson(e)).toList(),
      productCollections: json['product_collections']
          .map((e) => ProductCollection.fromJson(e))
          .toList(),
      customerGroups: json['customer_groups']
          .map((e) => CustomerGroup.fromJson(e))
          .toList(),
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? '')?.toLocal(),
      metadata: json['metadata'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['id'] = id;
    json['type'] = type?.value;
    json['operator'] = operator?.value;
    json['discount_rule_id'] = discountRuleId;
    json['discount_rule'] = discountRule?.toJson();
    json['products'] = products?.map((e) => e.toJson()).toList();
    json['product_types'] = productTypes?.map((e) => e.toJson()).toList();
    json['product_tags'] = productTags?.map((e) => e.toJson()).toList();
    json['product_collections'] =
        productCollections?.map((e) => e.toJson()).toList();
    json['customer_groups'] = customerGroups?.map((e) => e.toJson()).toList();
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['deleted_at'] = deletedAt.toString();
    json['metadata'] = metadata;
    return json;
  }
}
