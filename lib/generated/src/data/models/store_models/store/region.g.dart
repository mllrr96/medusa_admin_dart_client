// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/region.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RegionCWProxy {
  Region id(String? id);

  Region name(String? name);

  Region currencyCode(String? currencyCode);

  Region currency(Currency? currency);

  Region taxRate(num? taxRate);

  Region taxRates(List<TaxRate>? taxRates);

  Region taxCode(String? taxCode);

  Region giftCardsTaxable(bool? giftCardsTaxable);

  Region automaticTaxes(bool? automaticTaxes);

  Region countries(List<Country>? countries);

  Region taxProviderId(String? taxProviderId);

  Region taxProvider(TaxProvider? taxProvider);

  Region paymentProviders(List<PaymentProvider>? paymentProviders);

  Region fulfillmentProviders(List<FulfillmentProvider>? fulfillmentProviders);

  Region includesTax(bool? includesTax);

  Region createdAt(DateTime? createdAt);

  Region updatedAt(DateTime? updatedAt);

  Region deletedAt(DateTime? deletedAt);

  Region metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Region(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Region(...).copyWith(id: 12, name: "My name")
  /// ````
  Region call({
    String? id,
    String? name,
    String? currencyCode,
    Currency? currency,
    num? taxRate,
    List<TaxRate>? taxRates,
    String? taxCode,
    bool? giftCardsTaxable,
    bool? automaticTaxes,
    List<Country>? countries,
    String? taxProviderId,
    TaxProvider? taxProvider,
    List<PaymentProvider>? paymentProviders,
    List<FulfillmentProvider>? fulfillmentProviders,
    bool? includesTax,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRegion.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRegion.copyWith.fieldName(...)`
class _$RegionCWProxyImpl implements _$RegionCWProxy {
  const _$RegionCWProxyImpl(this._value);

  final Region _value;

  @override
  Region id(String? id) => this(id: id);

  @override
  Region name(String? name) => this(name: name);

  @override
  Region currencyCode(String? currencyCode) => this(currencyCode: currencyCode);

  @override
  Region currency(Currency? currency) => this(currency: currency);

  @override
  Region taxRate(num? taxRate) => this(taxRate: taxRate);

  @override
  Region taxRates(List<TaxRate>? taxRates) => this(taxRates: taxRates);

  @override
  Region taxCode(String? taxCode) => this(taxCode: taxCode);

  @override
  Region giftCardsTaxable(bool? giftCardsTaxable) =>
      this(giftCardsTaxable: giftCardsTaxable);

  @override
  Region automaticTaxes(bool? automaticTaxes) =>
      this(automaticTaxes: automaticTaxes);

  @override
  Region countries(List<Country>? countries) => this(countries: countries);

  @override
  Region taxProviderId(String? taxProviderId) =>
      this(taxProviderId: taxProviderId);

  @override
  Region taxProvider(TaxProvider? taxProvider) =>
      this(taxProvider: taxProvider);

  @override
  Region paymentProviders(List<PaymentProvider>? paymentProviders) =>
      this(paymentProviders: paymentProviders);

  @override
  Region fulfillmentProviders(
          List<FulfillmentProvider>? fulfillmentProviders) =>
      this(fulfillmentProviders: fulfillmentProviders);

  @override
  Region includesTax(bool? includesTax) => this(includesTax: includesTax);

  @override
  Region createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Region updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  Region deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  Region metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Region(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Region(...).copyWith(id: 12, name: "My name")
  /// ````
  Region call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? currencyCode = const $CopyWithPlaceholder(),
    Object? currency = const $CopyWithPlaceholder(),
    Object? taxRate = const $CopyWithPlaceholder(),
    Object? taxRates = const $CopyWithPlaceholder(),
    Object? taxCode = const $CopyWithPlaceholder(),
    Object? giftCardsTaxable = const $CopyWithPlaceholder(),
    Object? automaticTaxes = const $CopyWithPlaceholder(),
    Object? countries = const $CopyWithPlaceholder(),
    Object? taxProviderId = const $CopyWithPlaceholder(),
    Object? taxProvider = const $CopyWithPlaceholder(),
    Object? paymentProviders = const $CopyWithPlaceholder(),
    Object? fulfillmentProviders = const $CopyWithPlaceholder(),
    Object? includesTax = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return Region(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      currencyCode: currencyCode == const $CopyWithPlaceholder()
          ? _value.currencyCode
          // ignore: cast_nullable_to_non_nullable
          : currencyCode as String?,
      currency: currency == const $CopyWithPlaceholder()
          ? _value.currency
          // ignore: cast_nullable_to_non_nullable
          : currency as Currency?,
      taxRate: taxRate == const $CopyWithPlaceholder()
          ? _value.taxRate
          // ignore: cast_nullable_to_non_nullable
          : taxRate as num?,
      taxRates: taxRates == const $CopyWithPlaceholder()
          ? _value.taxRates
          // ignore: cast_nullable_to_non_nullable
          : taxRates as List<TaxRate>?,
      taxCode: taxCode == const $CopyWithPlaceholder()
          ? _value.taxCode
          // ignore: cast_nullable_to_non_nullable
          : taxCode as String?,
      giftCardsTaxable: giftCardsTaxable == const $CopyWithPlaceholder()
          ? _value.giftCardsTaxable
          // ignore: cast_nullable_to_non_nullable
          : giftCardsTaxable as bool?,
      automaticTaxes: automaticTaxes == const $CopyWithPlaceholder()
          ? _value.automaticTaxes
          // ignore: cast_nullable_to_non_nullable
          : automaticTaxes as bool?,
      countries: countries == const $CopyWithPlaceholder()
          ? _value.countries
          // ignore: cast_nullable_to_non_nullable
          : countries as List<Country>?,
      taxProviderId: taxProviderId == const $CopyWithPlaceholder()
          ? _value.taxProviderId
          // ignore: cast_nullable_to_non_nullable
          : taxProviderId as String?,
      taxProvider: taxProvider == const $CopyWithPlaceholder()
          ? _value.taxProvider
          // ignore: cast_nullable_to_non_nullable
          : taxProvider as TaxProvider?,
      paymentProviders: paymentProviders == const $CopyWithPlaceholder()
          ? _value.paymentProviders
          // ignore: cast_nullable_to_non_nullable
          : paymentProviders as List<PaymentProvider>?,
      fulfillmentProviders: fulfillmentProviders == const $CopyWithPlaceholder()
          ? _value.fulfillmentProviders
          // ignore: cast_nullable_to_non_nullable
          : fulfillmentProviders as List<FulfillmentProvider>?,
      includesTax: includesTax == const $CopyWithPlaceholder()
          ? _value.includesTax
          // ignore: cast_nullable_to_non_nullable
          : includesTax as bool?,
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

extension $RegionCopyWith on Region {
  /// Returns a callable class that can be used as follows: `instanceOfRegion.copyWith(...)` or like so:`instanceOfRegion.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RegionCWProxy get copyWith => _$RegionCWProxyImpl(this);
}
