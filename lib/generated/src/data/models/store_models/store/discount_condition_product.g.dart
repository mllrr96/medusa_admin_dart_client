// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/discount_condition_product.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DiscountConditionProductCWProxy {
  DiscountConditionProduct productId(String? productId);

  DiscountConditionProduct conditionId(String? conditionId);

  DiscountConditionProduct product(Product? product);

  DiscountConditionProduct discountCondition(
      DiscountCondition? discountCondition);

  DiscountConditionProduct createdAt(DateTime? createdAt);

  DiscountConditionProduct updatedAt(DateTime? updatedAt);

  DiscountConditionProduct metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiscountConditionProduct(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiscountConditionProduct(...).copyWith(id: 12, name: "My name")
  /// ````
  DiscountConditionProduct call({
    String? productId,
    String? conditionId,
    Product? product,
    DiscountCondition? discountCondition,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDiscountConditionProduct.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDiscountConditionProduct.copyWith.fieldName(...)`
class _$DiscountConditionProductCWProxyImpl
    implements _$DiscountConditionProductCWProxy {
  const _$DiscountConditionProductCWProxyImpl(this._value);

  final DiscountConditionProduct _value;

  @override
  DiscountConditionProduct productId(String? productId) =>
      this(productId: productId);

  @override
  DiscountConditionProduct conditionId(String? conditionId) =>
      this(conditionId: conditionId);

  @override
  DiscountConditionProduct product(Product? product) => this(product: product);

  @override
  DiscountConditionProduct discountCondition(
          DiscountCondition? discountCondition) =>
      this(discountCondition: discountCondition);

  @override
  DiscountConditionProduct createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  DiscountConditionProduct updatedAt(DateTime? updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  DiscountConditionProduct metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiscountConditionProduct(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiscountConditionProduct(...).copyWith(id: 12, name: "My name")
  /// ````
  DiscountConditionProduct call({
    Object? productId = const $CopyWithPlaceholder(),
    Object? conditionId = const $CopyWithPlaceholder(),
    Object? product = const $CopyWithPlaceholder(),
    Object? discountCondition = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return DiscountConditionProduct(
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String?,
      conditionId: conditionId == const $CopyWithPlaceholder()
          ? _value.conditionId
          // ignore: cast_nullable_to_non_nullable
          : conditionId as String?,
      product: product == const $CopyWithPlaceholder()
          ? _value.product
          // ignore: cast_nullable_to_non_nullable
          : product as Product?,
      discountCondition: discountCondition == const $CopyWithPlaceholder()
          ? _value.discountCondition
          // ignore: cast_nullable_to_non_nullable
          : discountCondition as DiscountCondition?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, dynamic>?,
    );
  }
}

extension $DiscountConditionProductCopyWith on DiscountConditionProduct {
  /// Returns a callable class that can be used as follows: `instanceOfDiscountConditionProduct.copyWith(...)` or like so:`instanceOfDiscountConditionProduct.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DiscountConditionProductCWProxy get copyWith =>
      _$DiscountConditionProductCWProxyImpl(this);
}
