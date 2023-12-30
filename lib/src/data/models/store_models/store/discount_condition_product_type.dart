import '../products/index.dart';
import 'index.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/discount_condition_product_type.g.dart';

@CopyWith()
class DiscountConditionProductType {
 final String? productTypeId;
 final String? conditionId;
 final ProductType? productType;
 final DiscountCondition? discountCondition;
 final DateTime? createdAt;
 final DateTime? updatedAt;
 final Map<String, dynamic>? metadata;

  DiscountConditionProductType({
    required this.productTypeId,
    required this.conditionId,
    this.productType,
    this.discountCondition,
    this.createdAt,
    this.updatedAt,
    this.metadata,
  });

 factory DiscountConditionProductType.fromJson(Map<String, dynamic> json) {
   return DiscountConditionProductType(
     productTypeId: json['product_type_id'],
     conditionId: json['condition_id'],
     productType: json['product_type'] != null
         ? ProductType.fromJson(json['product_type'])
         : null,
     discountCondition: json['discount_condition'] != null
         ? DiscountCondition.fromJson(json['discount_condition'])
         : null,
     createdAt: DateTime.tryParse(json['created_at'] ?? ''),
     updatedAt: DateTime.tryParse(json['updated_at'] ?? ''),
     metadata: json['metadata'] ,
   );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['product_type_id'] = productTypeId;
    json['condition_id'] = conditionId;
    json['product_type'] = productType?.toJson();
    json['discount_condition'] = discountCondition?.toJson();
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['metadata'] = metadata;
    return json;
  }
}
