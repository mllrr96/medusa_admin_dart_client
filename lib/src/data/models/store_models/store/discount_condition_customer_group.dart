import 'index.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/discount_condition_customer_group.g.dart';

@CopyWith()
class DiscountConditionCustomerGroup {
  final String? customerGroupId;
  final String? conditionId;
  final CustomerGroup? customerGroup;
  final DiscountCondition? discountCondition;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Map<String, dynamic>? metadata;

  const DiscountConditionCustomerGroup({
    required this.customerGroupId,
    required this.conditionId,
    this.customerGroup,
    this.discountCondition,
    this.createdAt,
    this.updatedAt,
    this.metadata,
  });

 factory DiscountConditionCustomerGroup.fromJson(Map<String, dynamic> json) {
    return DiscountConditionCustomerGroup(
      customerGroupId: json['customer_group_id'],
      conditionId: json['condition_id'],
      customerGroup: json['customer_group'] != null
          ? CustomerGroup.fromJson(json['customer_group'])
          : null,
      discountCondition: json['discount_condition'] != null
          ? DiscountCondition.fromJson(json['discount_condition'])
          : null,
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      metadata: json['metadata'] ,
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['customer_group_id'] = customerGroupId;
    json['condition_id'] = conditionId;
    json['customer_group'] = customerGroup?.toJson() ;
    json['discount_condition'] = discountCondition?.toJson() ;
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['metadata'] = metadata;
    return json;
  }
}
