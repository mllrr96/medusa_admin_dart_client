// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/products/product_option.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductOptionCWProxy {
  ProductOption id(String? id);

  ProductOption title(String? title);

  ProductOption values(List<ProductOptionValue>? values);

  ProductOption productId(String? productId);

  ProductOption product(Product? product);

  ProductOption createdAt(DateTime? createdAt);

  ProductOption updatedAt(DateTime? updatedAt);

  ProductOption deletedAt(DateTime? deletedAt);

  ProductOption metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductOption(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductOption call({
    String? id,
    String? title,
    List<ProductOptionValue>? values,
    String? productId,
    Product? product,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductOption.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductOption.copyWith.fieldName(...)`
class _$ProductOptionCWProxyImpl implements _$ProductOptionCWProxy {
  const _$ProductOptionCWProxyImpl(this._value);

  final ProductOption _value;

  @override
  ProductOption id(String? id) => this(id: id);

  @override
  ProductOption title(String? title) => this(title: title);

  @override
  ProductOption values(List<ProductOptionValue>? values) =>
      this(values: values);

  @override
  ProductOption productId(String? productId) => this(productId: productId);

  @override
  ProductOption product(Product? product) => this(product: product);

  @override
  ProductOption createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  ProductOption updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  ProductOption deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  ProductOption metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductOption(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductOption call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? values = const $CopyWithPlaceholder(),
    Object? productId = const $CopyWithPlaceholder(),
    Object? product = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ProductOption(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      values: values == const $CopyWithPlaceholder()
          ? _value.values
          // ignore: cast_nullable_to_non_nullable
          : values as List<ProductOptionValue>?,
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String?,
      product: product == const $CopyWithPlaceholder()
          ? _value.product
          // ignore: cast_nullable_to_non_nullable
          : product as Product?,
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

extension $ProductOptionCopyWith on ProductOption {
  /// Returns a callable class that can be used as follows: `instanceOfProductOption.copyWith(...)` or like so:`instanceOfProductOption.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductOptionCWProxy get copyWith => _$ProductOptionCWProxyImpl(this);
}
