import '../products/index.dart';
import 'index.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/discount_condition_product_tag.g.dart';

@CopyWith()
class DiscountConditionProductTag {
  final  String? productTagId;
  final String? conditionId;
  final ProductTag? productTag;
  final DiscountCondition? discountCondition;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Map<String, dynamic>? metadata;

  DiscountConditionProductTag({
    required this.productTagId,
    required this.conditionId,
    this.productTag,
    this.discountCondition,
    this.createdAt,
    this.updatedAt,
    this.metadata,
  });

 factory DiscountConditionProductTag.fromJson(Map<String, dynamic> json) {
   return DiscountConditionProductTag(
     productTagId: json['product_tag_id'],
     conditionId: json['condition_id'],
     productTag: json['product_tag'] != null
         ? ProductTag.fromJson(json['product_tag'])
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
    json['product_tag_id'] = productTagId;
    json['condition_id'] = conditionId;
    json['product_tag'] = productTag?.toJson();
    json['discount_condition'] = discountCondition?.toJson();
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['metadata'] = metadata;
    return json;
  }
}
