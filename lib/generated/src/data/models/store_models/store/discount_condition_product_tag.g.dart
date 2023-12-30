// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/discount_condition_product_tag.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DiscountConditionProductTagCWProxy {
  DiscountConditionProductTag productTagId(String? productTagId);

  DiscountConditionProductTag conditionId(String? conditionId);

  DiscountConditionProductTag productTag(ProductTag? productTag);

  DiscountConditionProductTag discountCondition(
      DiscountCondition? discountCondition);

  DiscountConditionProductTag createdAt(DateTime? createdAt);

  DiscountConditionProductTag updatedAt(DateTime? updatedAt);

  DiscountConditionProductTag metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiscountConditionProductTag(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiscountConditionProductTag(...).copyWith(id: 12, name: "My name")
  /// ````
  DiscountConditionProductTag call({
    String? productTagId,
    String? conditionId,
    ProductTag? productTag,
    DiscountCondition? discountCondition,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDiscountConditionProductTag.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDiscountConditionProductTag.copyWith.fieldName(...)`
class _$DiscountConditionProductTagCWProxyImpl
    implements _$DiscountConditionProductTagCWProxy {
  const _$DiscountConditionProductTagCWProxyImpl(this._value);

  final DiscountConditionProductTag _value;

  @override
  DiscountConditionProductTag productTagId(String? productTagId) =>
      this(productTagId: productTagId);

  @override
  DiscountConditionProductTag conditionId(String? conditionId) =>
      this(conditionId: conditionId);

  @override
  DiscountConditionProductTag productTag(ProductTag? productTag) =>
      this(productTag: productTag);

  @override
  DiscountConditionProductTag discountCondition(
          DiscountCondition? discountCondition) =>
      this(discountCondition: discountCondition);

  @override
  DiscountConditionProductTag createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  DiscountConditionProductTag updatedAt(DateTime? updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  DiscountConditionProductTag metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiscountConditionProductTag(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiscountConditionProductTag(...).copyWith(id: 12, name: "My name")
  /// ````
  DiscountConditionProductTag call({
    Object? productTagId = const $CopyWithPlaceholder(),
    Object? conditionId = const $CopyWithPlaceholder(),
    Object? productTag = const $CopyWithPlaceholder(),
    Object? discountCondition = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return DiscountConditionProductTag(
      productTagId: productTagId == const $CopyWithPlaceholder()
          ? _value.productTagId
          // ignore: cast_nullable_to_non_nullable
          : productTagId as String?,
      conditionId: conditionId == const $CopyWithPlaceholder()
          ? _value.conditionId
          // ignore: cast_nullable_to_non_nullable
          : conditionId as String?,
      productTag: productTag == const $CopyWithPlaceholder()
          ? _value.productTag
          // ignore: cast_nullable_to_non_nullable
          : productTag as ProductTag?,
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

extension $DiscountConditionProductTagCopyWith on DiscountConditionProductTag {
  /// Returns a callable class that can be used as follows: `instanceOfDiscountConditionProductTag.copyWith(...)` or like so:`instanceOfDiscountConditionProductTag.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DiscountConditionProductTagCWProxy get copyWith =>
      _$DiscountConditionProductTagCWProxyImpl(this);
}
