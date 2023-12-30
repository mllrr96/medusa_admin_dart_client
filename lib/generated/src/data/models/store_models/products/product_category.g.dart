// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/products/product_category.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCategoryCWProxy {
  ProductCategory id(String? id);

  ProductCategory name(String? name);

  ProductCategory handle(String? handle);

  ProductCategory mPath(String? mPath);

  ProductCategory isInternal(bool? isInternal);

  ProductCategory isActive(bool? isActive);

  ProductCategory parentCategoryId(String? parentCategoryId);

  ProductCategory rank(int? rank);

  ProductCategory parentCategory(ProductCategory? parentCategory);

  ProductCategory products(List<Product>? products);

  ProductCategory createdAt(DateTime? createdAt);

  ProductCategory updatedAt(DateTime? updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductCategory(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductCategory(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductCategory call({
    String? id,
    String? name,
    String? handle,
    String? mPath,
    bool? isInternal,
    bool? isActive,
    String? parentCategoryId,
    int? rank,
    ProductCategory? parentCategory,
    List<Product>? products,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductCategory.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductCategory.copyWith.fieldName(...)`
class _$ProductCategoryCWProxyImpl implements _$ProductCategoryCWProxy {
  const _$ProductCategoryCWProxyImpl(this._value);

  final ProductCategory _value;

  @override
  ProductCategory id(String? id) => this(id: id);

  @override
  ProductCategory name(String? name) => this(name: name);

  @override
  ProductCategory handle(String? handle) => this(handle: handle);

  @override
  ProductCategory mPath(String? mPath) => this(mPath: mPath);

  @override
  ProductCategory isInternal(bool? isInternal) => this(isInternal: isInternal);

  @override
  ProductCategory isActive(bool? isActive) => this(isActive: isActive);

  @override
  ProductCategory parentCategoryId(String? parentCategoryId) =>
      this(parentCategoryId: parentCategoryId);

  @override
  ProductCategory rank(int? rank) => this(rank: rank);

  @override
  ProductCategory parentCategory(ProductCategory? parentCategory) =>
      this(parentCategory: parentCategory);

  @override
  ProductCategory products(List<Product>? products) => this(products: products);

  @override
  ProductCategory createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  ProductCategory updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductCategory(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductCategory(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductCategory call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? handle = const $CopyWithPlaceholder(),
    Object? mPath = const $CopyWithPlaceholder(),
    Object? isInternal = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? parentCategoryId = const $CopyWithPlaceholder(),
    Object? rank = const $CopyWithPlaceholder(),
    Object? parentCategory = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return ProductCategory(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      handle: handle == const $CopyWithPlaceholder()
          ? _value.handle
          // ignore: cast_nullable_to_non_nullable
          : handle as String?,
      mPath: mPath == const $CopyWithPlaceholder()
          ? _value.mPath
          // ignore: cast_nullable_to_non_nullable
          : mPath as String?,
      isInternal: isInternal == const $CopyWithPlaceholder()
          ? _value.isInternal
          // ignore: cast_nullable_to_non_nullable
          : isInternal as bool?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      parentCategoryId: parentCategoryId == const $CopyWithPlaceholder()
          ? _value.parentCategoryId
          // ignore: cast_nullable_to_non_nullable
          : parentCategoryId as String?,
      rank: rank == const $CopyWithPlaceholder()
          ? _value.rank
          // ignore: cast_nullable_to_non_nullable
          : rank as int?,
      parentCategory: parentCategory == const $CopyWithPlaceholder()
          ? _value.parentCategory
          // ignore: cast_nullable_to_non_nullable
          : parentCategory as ProductCategory?,
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
    );
  }
}

extension $ProductCategoryCopyWith on ProductCategory {
  /// Returns a callable class that can be used as follows: `instanceOfProductCategory.copyWith(...)` or like so:`instanceOfProductCategory.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCategoryCWProxy get copyWith => _$ProductCategoryCWProxyImpl(this);
}
