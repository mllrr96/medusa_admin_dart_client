// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/products/product_collection.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCollectionCWProxy {
  ProductCollection id(String? id);

  ProductCollection title(String? title);

  ProductCollection handle(String? handle);

  ProductCollection products(List<Product>? products);

  ProductCollection createdAt(DateTime? createdAt);

  ProductCollection updatedAt(DateTime? updatedAt);

  ProductCollection deletedAt(DateTime? deletedAt);

  ProductCollection metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductCollection(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductCollection(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductCollection call({
    String? id,
    String? title,
    String? handle,
    List<Product>? products,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductCollection.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductCollection.copyWith.fieldName(...)`
class _$ProductCollectionCWProxyImpl implements _$ProductCollectionCWProxy {
  const _$ProductCollectionCWProxyImpl(this._value);

  final ProductCollection _value;

  @override
  ProductCollection id(String? id) => this(id: id);

  @override
  ProductCollection title(String? title) => this(title: title);

  @override
  ProductCollection handle(String? handle) => this(handle: handle);

  @override
  ProductCollection products(List<Product>? products) =>
      this(products: products);

  @override
  ProductCollection createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  ProductCollection updatedAt(DateTime? updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  ProductCollection deletedAt(DateTime? deletedAt) =>
      this(deletedAt: deletedAt);

  @override
  ProductCollection metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductCollection(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductCollection(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductCollection call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? handle = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ProductCollection(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      handle: handle == const $CopyWithPlaceholder()
          ? _value.handle
          // ignore: cast_nullable_to_non_nullable
          : handle as String?,
      products: products == const $CopyWithPlaceholder()
          ? _value.products
          // ignore: cast_nullable_to_non_nullable
          : products as List<Product>?,
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

extension $ProductCollectionCopyWith on ProductCollection {
  /// Returns a callable class that can be used as follows: `instanceOfProductCollection.copyWith(...)` or like so:`instanceOfProductCollection.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCollectionCWProxy get copyWith =>
      _$ProductCollectionCWProxyImpl(this);
}
