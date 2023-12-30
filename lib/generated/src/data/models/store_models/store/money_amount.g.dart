// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/money_amount.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MoneyAmountCWProxy {
  MoneyAmount id(String? id);

  MoneyAmount currencyCode(String? currencyCode);

  MoneyAmount currency(Currency? currency);

  MoneyAmount amount(int? amount);

  MoneyAmount minQuantity(int? minQuantity);

  MoneyAmount maxQuantity(int? maxQuantity);

  MoneyAmount priceListId(String? priceListId);

  MoneyAmount priceList(List<PriceList>? priceList);

  MoneyAmount variantId(String? variantId);

  MoneyAmount variant(ProductVariant? variant);

  MoneyAmount regionId(String? regionId);

  MoneyAmount region(Region? region);

  MoneyAmount createdAt(DateTime? createdAt);

  MoneyAmount updatedAt(DateTime? updatedAt);

  MoneyAmount deletedAt(DateTime? deletedAt);

  MoneyAmount metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MoneyAmount(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MoneyAmount(...).copyWith(id: 12, name: "My name")
  /// ````
  MoneyAmount call({
    String? id,
    String? currencyCode,
    Currency? currency,
    int? amount,
    int? minQuantity,
    int? maxQuantity,
    String? priceListId,
    List<PriceList>? priceList,
    String? variantId,
    ProductVariant? variant,
    String? regionId,
    Region? region,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMoneyAmount.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMoneyAmount.copyWith.fieldName(...)`
class _$MoneyAmountCWProxyImpl implements _$MoneyAmountCWProxy {
  const _$MoneyAmountCWProxyImpl(this._value);

  final MoneyAmount _value;

  @override
  MoneyAmount id(String? id) => this(id: id);

  @override
  MoneyAmount currencyCode(String? currencyCode) =>
      this(currencyCode: currencyCode);

  @override
  MoneyAmount currency(Currency? currency) => this(currency: currency);

  @override
  MoneyAmount amount(int? amount) => this(amount: amount);

  @override
  MoneyAmount minQuantity(int? minQuantity) => this(minQuantity: minQuantity);

  @override
  MoneyAmount maxQuantity(int? maxQuantity) => this(maxQuantity: maxQuantity);

  @override
  MoneyAmount priceListId(String? priceListId) =>
      this(priceListId: priceListId);

  @override
  MoneyAmount priceList(List<PriceList>? priceList) =>
      this(priceList: priceList);

  @override
  MoneyAmount variantId(String? variantId) => this(variantId: variantId);

  @override
  MoneyAmount variant(ProductVariant? variant) => this(variant: variant);

  @override
  MoneyAmount regionId(String? regionId) => this(regionId: regionId);

  @override
  MoneyAmount region(Region? region) => this(region: region);

  @override
  MoneyAmount createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  MoneyAmount updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  MoneyAmount deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  MoneyAmount metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MoneyAmount(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MoneyAmount(...).copyWith(id: 12, name: "My name")
  /// ````
  MoneyAmount call({
    Object? id = const $CopyWithPlaceholder(),
    Object? currencyCode = const $CopyWithPlaceholder(),
    Object? currency = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? minQuantity = const $CopyWithPlaceholder(),
    Object? maxQuantity = const $CopyWithPlaceholder(),
    Object? priceListId = const $CopyWithPlaceholder(),
    Object? priceList = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variant = const $CopyWithPlaceholder(),
    Object? regionId = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return MoneyAmount(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      currencyCode: currencyCode == const $CopyWithPlaceholder()
          ? _value.currencyCode
          // ignore: cast_nullable_to_non_nullable
          : currencyCode as String?,
      currency: currency == const $CopyWithPlaceholder()
          ? _value.currency
          // ignore: cast_nullable_to_non_nullable
          : currency as Currency?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int?,
      minQuantity: minQuantity == const $CopyWithPlaceholder()
          ? _value.minQuantity
          // ignore: cast_nullable_to_non_nullable
          : minQuantity as int?,
      maxQuantity: maxQuantity == const $CopyWithPlaceholder()
          ? _value.maxQuantity
          // ignore: cast_nullable_to_non_nullable
          : maxQuantity as int?,
      priceListId: priceListId == const $CopyWithPlaceholder()
          ? _value.priceListId
          // ignore: cast_nullable_to_non_nullable
          : priceListId as String?,
      priceList: priceList == const $CopyWithPlaceholder()
          ? _value.priceList
          // ignore: cast_nullable_to_non_nullable
          : priceList as List<PriceList>?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variant: variant == const $CopyWithPlaceholder()
          ? _value.variant
          // ignore: cast_nullable_to_non_nullable
          : variant as ProductVariant?,
      regionId: regionId == const $CopyWithPlaceholder()
          ? _value.regionId
          // ignore: cast_nullable_to_non_nullable
          : regionId as String?,
      region: region == const $CopyWithPlaceholder()
          ? _value.region
          // ignore: cast_nullable_to_non_nullable
          : region as Region?,
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

extension $MoneyAmountCopyWith on MoneyAmount {
  /// Returns a callable class that can be used as follows: `instanceOfMoneyAmount.copyWith(...)` or like so:`instanceOfMoneyAmount.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MoneyAmountCWProxy get copyWith => _$MoneyAmountCWProxyImpl(this);
}
