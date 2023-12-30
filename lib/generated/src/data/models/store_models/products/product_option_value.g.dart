// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/products/product_option_value.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductOptionValueCWProxy {
  ProductOptionValue id(String? id);

  ProductOptionValue value(String? value);

  ProductOptionValue optionId(String? optionId);

  ProductOptionValue option(ProductOption? option);

  ProductOptionValue variantId(String? variantId);

  ProductOptionValue variant(ProductVariant? variant);

  ProductOptionValue createdAt(DateTime? createdAt);

  ProductOptionValue updatedAt(DateTime? updatedAt);

  ProductOptionValue deletedAt(DateTime? deletedAt);

  ProductOptionValue metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductOptionValue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductOptionValue(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductOptionValue call({
    String? id,
    String? value,
    String? optionId,
    ProductOption? option,
    String? variantId,
    ProductVariant? variant,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductOptionValue.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductOptionValue.copyWith.fieldName(...)`
class _$ProductOptionValueCWProxyImpl implements _$ProductOptionValueCWProxy {
  const _$ProductOptionValueCWProxyImpl(this._value);

  final ProductOptionValue _value;

  @override
  ProductOptionValue id(String? id) => this(id: id);

  @override
  ProductOptionValue value(String? value) => this(value: value);

  @override
  ProductOptionValue optionId(String? optionId) => this(optionId: optionId);

  @override
  ProductOptionValue option(ProductOption? option) => this(option: option);

  @override
  ProductOptionValue variantId(String? variantId) => this(variantId: variantId);

  @override
  ProductOptionValue variant(ProductVariant? variant) => this(variant: variant);

  @override
  ProductOptionValue createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  ProductOptionValue updatedAt(DateTime? updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  ProductOptionValue deletedAt(DateTime? deletedAt) =>
      this(deletedAt: deletedAt);

  @override
  ProductOptionValue metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductOptionValue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductOptionValue(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductOptionValue call({
    Object? id = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? optionId = const $CopyWithPlaceholder(),
    Object? option = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variant = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ProductOptionValue(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
      optionId: optionId == const $CopyWithPlaceholder()
          ? _value.optionId
          // ignore: cast_nullable_to_non_nullable
          : optionId as String?,
      option: option == const $CopyWithPlaceholder()
          ? _value.option
          // ignore: cast_nullable_to_non_nullable
          : option as ProductOption?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variant: variant == const $CopyWithPlaceholder()
          ? _value.variant
          // ignore: cast_nullable_to_non_nullable
          : variant as ProductVariant?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      deletedAt: deletedAt == const $CopyWithPlaceholder()
          ? _value.deletedAt
          // ignore: cast_nullable_to_non_nullable
          : deletedAt as DateTime?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, dynamic>?,
    );
  }
}

extension $ProductOptionValueCopyWith on ProductOptionValue {
  /// Returns a callable class that can be used as follows: `instanceOfProductOptionValue.copyWith(...)` or like so:`instanceOfProductOptionValue.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductOptionValueCWProxy get copyWith =>
      _$ProductOptionValueCWProxyImpl(this);
}
