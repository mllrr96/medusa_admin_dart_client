// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/discount_condition_product_collection.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DiscountConditionProductCollectionCWProxy {
  DiscountConditionProductCollection productCollectionId(
      String? productCollectionId);

  DiscountConditionProductCollection conditionId(String? conditionId);

  DiscountConditionProductCollection productCollection(
      ProductCollection? productCollection);

  DiscountConditionProductCollection discountCondition(
      DiscountCondition? discountCondition);

  DiscountConditionProductCollection createdAt(DateTime? createdAt);

  DiscountConditionProductCollection updatedAt(DateTime? updatedAt);

  DiscountConditionProductCollection metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiscountConditionProductCollection(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiscountConditionProductCollection(...).copyWith(id: 12, name: "My name")
  /// ````
  DiscountConditionProductCollection call({
    String? productCollectionId,
    String? conditionId,
    ProductCollection? productCollection,
    DiscountCondition? discountCondition,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDiscountConditionProductCollection.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDiscountConditionProductCollection.copyWith.fieldName(...)`
class _$DiscountConditionProductCollectionCWProxyImpl
    implements _$DiscountConditionProductCollectionCWProxy {
  const _$DiscountConditionProductCollectionCWProxyImpl(this._value);

  final DiscountConditionProductCollection _value;

  @override
  DiscountConditionProductCollection productCollectionId(
          String? productCollectionId) =>
      this(productCollectionId: productCollectionId);

  @override
  DiscountConditionProductCollection conditionId(String? conditionId) =>
      this(conditionId: conditionId);

  @override
  DiscountConditionProductCollection productCollection(
          ProductCollection? productCollection) =>
      this(productCollection: productCollection);

  @override
  DiscountConditionProductCollection discountCondition(
          DiscountCondition? discountCondition) =>
      this(discountCondition: discountCondition);

  @override
  DiscountConditionProductCollection createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  DiscountConditionProductCollection updatedAt(DateTime? updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  DiscountConditionProductCollection metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiscountConditionProductCollection(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiscountConditionProductCollection(...).copyWith(id: 12, name: "My name")
  /// ````
  DiscountConditionProductCollection call({
    Object? productCollectionId = const $CopyWithPlaceholder(),
    Object? conditionId = const $CopyWithPlaceholder(),
    Object? productCollection = const $CopyWithPlaceholder(),
    Object? discountCondition = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return DiscountConditionProductCollection(
      productCollectionId: productCollectionId == const $CopyWithPlaceholder()
          ? _value.productCollectionId
          // ignore: cast_nullable_to_non_nullable
          : productCollectionId as String?,
      conditionId: conditionId == const $CopyWithPlaceholder()
          ? _value.conditionId
          // ignore: cast_nullable_to_non_nullable
          : conditionId as String?,
      productCollection: productCollection == const $CopyWithPlaceholder()
          ? _value.productCollection
          // ignore: cast_nullable_to_non_nullable
          : productCollection as ProductCollection?,
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

extension $DiscountConditionProductCollectionCopyWith
    on DiscountConditionProductCollection {
  /// Returns a callable class that can be used as follows: `instanceOfDiscountConditionProductCollection.copyWith(...)` or like so:`instanceOfDiscountConditionProductCollection.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DiscountConditionProductCollectionCWProxy get copyWith =>
      _$DiscountConditionProductCollectionCWProxyImpl(this);
}
