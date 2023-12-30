// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/tax_rate.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TaxRateCWProxy {
  TaxRate id(String? id);

  TaxRate rate(double? rate);

  TaxRate code(String? code);

  TaxRate name(String? name);

  TaxRate regionId(String? regionId);

  TaxRate region(Region? region);

  TaxRate metadata(Map<String, dynamic>? metadata);

  TaxRate products(List<Product>? products);

  TaxRate productTypes(List<ProductType>? productTypes);

  TaxRate shippingOptions(List<ShippingOption>? shippingOptions);

  TaxRate productCount(int? productCount);

  TaxRate productTypeCount(int? productTypeCount);

  TaxRate shippingOptionCount(int? shippingOptionCount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaxRate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaxRate(...).copyWith(id: 12, name: "My name")
  /// ````
  TaxRate call({
    String? id,
    double? rate,
    String? code,
    String? name,
    String? regionId,
    Region? region,
    Map<String, dynamic>? metadata,
    List<Product>? products,
    List<ProductType>? productTypes,
    List<ShippingOption>? shippingOptions,
    int? productCount,
    int? productTypeCount,
    int? shippingOptionCount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTaxRate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTaxRate.copyWith.fieldName(...)`
class _$TaxRateCWProxyImpl implements _$TaxRateCWProxy {
  const _$TaxRateCWProxyImpl(this._value);

  final TaxRate _value;

  @override
  TaxRate id(String? id) => this(id: id);

  @override
  TaxRate rate(double? rate) => this(rate: rate);

  @override
  TaxRate code(String? code) => this(code: code);

  @override
  TaxRate name(String? name) => this(name: name);

  @override
  TaxRate regionId(String? regionId) => this(regionId: regionId);

  @override
  TaxRate region(Region? region) => this(region: region);

  @override
  TaxRate metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override
  TaxRate products(List<Product>? products) => this(products: products);

  @override
  TaxRate productTypes(List<ProductType>? productTypes) =>
      this(productTypes: productTypes);

  @override
  TaxRate shippingOptions(List<ShippingOption>? shippingOptions) =>
      this(shippingOptions: shippingOptions);

  @override
  TaxRate productCount(int? productCount) => this(productCount: productCount);

  @override
  TaxRate productTypeCount(int? productTypeCount) =>
      this(productTypeCount: productTypeCount);

  @override
  TaxRate shippingOptionCount(int? shippingOptionCount) =>
      this(shippingOptionCount: shippingOptionCount);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaxRate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaxRate(...).copyWith(id: 12, name: "My name")
  /// ````
  TaxRate call({
    Object? id = const $CopyWithPlaceholder(),
    Object? rate = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? regionId = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? productTypes = const $CopyWithPlaceholder(),
    Object? shippingOptions = const $CopyWithPlaceholder(),
    Object? productCount = const $CopyWithPlaceholder(),
    Object? productTypeCount = const $CopyWithPlaceholder(),
    Object? shippingOptionCount = const $CopyWithPlaceholder(),
  }) {
    return TaxRate(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      rate: rate == const $CopyWithPlaceholder()
          ? _value.rate
          // ignore: cast_nullable_to_non_nullable
          : rate as double?,
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      regionId: regionId == const $CopyWithPlaceholder()
          ? _value.regionId
          // ignore: cast_nullable_to_non_nullable
          : regionId as String?,
      region: region == const $CopyWithPlaceholder()
          ? _value.region
          // ignore: cast_nullable_to_non_nullable
          : region as Region?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, dynamic>?,
      products: products == const $CopyWithPlaceholder()
          ? _value.products
          // ignore: cast_nullable_to_non_nullable
          : products as List<Product>?,
      productTypes: productTypes == const $CopyWithPlaceholder()
          ? _value.productTypes
          // ignore: cast_nullable_to_non_nullable
          : productTypes as List<ProductType>?,
      shippingOptions: shippingOptions == const $CopyWithPlaceholder()
          ? _value.shippingOptions
          // ignore: cast_nullable_to_non_nullable
          : shippingOptions as List<ShippingOption>?,
      productCount: productCount == const $CopyWithPlaceholder()
          ? _value.productCount
          // ignore: cast_nullable_to_non_nullable
          : productCount as int?,
      productTypeCount: productTypeCount == const $CopyWithPlaceholder()
          ? _value.productTypeCount
          // ignore: cast_nullable_to_non_nullable
          : productTypeCount as int?,
      shippingOptionCount: shippingOptionCount == const $CopyWithPlaceholder()
          ? _value.shippingOptionCount
          // ignore: cast_nullable_to_non_nullable
          : shippingOptionCount as int?,
    );
  }
}

extension $TaxRateCopyWith on TaxRate {
  /// Returns a callable class that can be used as follows: `instanceOfTaxRate.copyWith(...)` or like so:`instanceOfTaxRate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TaxRateCWProxy get copyWith => _$TaxRateCWProxyImpl(this);
}
