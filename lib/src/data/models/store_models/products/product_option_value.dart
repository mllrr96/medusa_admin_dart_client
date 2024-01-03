import 'index.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/products/product_option_value.g.dart';

@CopyWith()
class ProductOptionValue {
  /// The product option value's id
  ///
  /// Example: "optval_01F0YESHR7S6ECD03RF6W12DSJ"
  final String? id;

  /// The value that the product variant has defined for the specific product option (e.g. if the product option is "size" this value could be small, medium or large).
  ///
  /// Example: "large"
  final String? value;

  /// The id of the product option that the product option value belongs to.
  ///
  /// Example: "opt_01F0YESHQBZVKCEXJ24BS6PCX3"
  final String? optionId;

  /// The details of the product option that the product option value belongs to.
  final ProductOption? option;

  /// The id of the product variant that uses this product option value.
  ///
  /// Example: "variant_01G1G5V2MRX2V3PVSR2WXYPFB6"
  final String? variantId;

  /// The details of the product variant that uses this product option value.
  final ProductVariant? variant;

  /// The date with timezone at which the resource was created.
  final DateTime? createdAt;

  /// The date with timezone at which the resource was updated.
  final DateTime? updatedAt;

  /// The date with timezone at which the resource was deleted.
  final DateTime? deletedAt;

  /// An optional key-value map with additional details
  final Map<String, dynamic>? metadata;

  const ProductOptionValue({
    this.id,
    required this.value,
    required this.optionId,
    this.option,
    required this.variantId,
    this.variant,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

  factory ProductOptionValue.fromJson(Map<String, dynamic> json) {
    return ProductOptionValue(
      id: json['id'],
      value: json['value'],
      optionId: json['option_id'],
      variantId: json['variant_id'],
      option: json['option'] != null ? ProductOption.fromJson(json) : null,
      variant: json['variant'] != null ? ProductVariant.fromJson(json) : null,
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? '')?.toLocal(),
      metadata: json['metadata'],
    );
  }
  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['value'] = value;

    if (id != null) {
      json['id'] = id;
    }
    if (optionId != null) {
      json['option_id'] = optionId;
    }
    if (option != null) {
      json['option'] = option?.toJson();
    }

    if (variantId != null) {
      json['variant_id'] = variantId;
    }
    if (variant != null) {
      json['variant'] = variant?.toJson();
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

  @override
  String toString(){
    return 'id: $id \n value: $value \n option ID: $optionId \n variant ID: $variantId';
  }
}
