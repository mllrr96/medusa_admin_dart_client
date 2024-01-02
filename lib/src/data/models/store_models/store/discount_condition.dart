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
      products: json['products']!=null ? List<Product>.from(json['products'].map((e) => Product.fromJson(e))): null,
      productTypes: json['product_types']!=null ? List<ProductType>.from(json['product_types'].map((e) => ProductType.fromJson(e))): null,
      productTags: json['product_tags']!=null ? List<ProductTag>.from(json['product_tags'].map((e) => ProductTag.fromJson(e))): null,
      productCollections: json['product_collections']!=null ? List<ProductCollection>.from(json['product_collections'].map((e) => ProductCollection.fromJson(e))): null,
      customerGroups: json['customer_groups']!=null ? List<CustomerGroup>.from(json['customer_groups'].map((e) => CustomerGroup.fromJson(e))): null,
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? '')?.toLocal(),
      metadata: json['metadata'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id;
    }
    // if (type != null) {
    //   json['type'] = type?.value;
    // }
    if (operator != null) {
      json['operator'] = operator?.value;
    }
    if (discountRuleId != null) {
      json['discount_rule_id'] = discountRuleId;
    }
    if (discountRule != null) {
      json['discount_rule'] = discountRule?.toJson();
    }
    if (products != null) {
      json['products'] = products;
    }
    if (productTypes != null) {
      json['product_types'] = productTypes;
    }
    if (productTags != null) {
      json['product_tags'] = productTags;
    }
    if (productCollections != null) {
      json['product_collections'] = productCollections;
    }
    if (customerGroups != null) {
      json['customer_groups'] = customerGroups;
    }
    if (createdAt != null) {
      json['created_at'] = createdAt.toString();
    }
    if (updatedAt != null) {
      json['updated_at'] = updatedAt.toString();
    }
    if (deletedAt != null) {
      json['deleted_at'] = deletedAt.toString();
    }
    if (metadata != null) {
      json['metadata'] = metadata;
    }

    return json;
  }
}
