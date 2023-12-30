// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/shipping_option.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ShippingOptionCWProxy {
  ShippingOption id(String? id);

  ShippingOption name(String? name);

  ShippingOption regionId(String? regionId);

  ShippingOption region(Region? region);

  ShippingOption profileId(String? profileId);

  ShippingOption profile(ShippingProfile? profile);

  ShippingOption providerId(String? providerId);

  ShippingOption provider(FulfillmentProvider? provider);

  ShippingOption priceType(ShippingOptionPriceType? priceType);

  ShippingOption amount(int? amount);

  ShippingOption isReturn(bool isReturn);

  ShippingOption adminOnly(bool adminOnly);

  ShippingOption requirements(List<ShippingOptionRequirement>? requirements);

  ShippingOption data(Map<String, dynamic>? data);

  ShippingOption includesTax(bool? includesTax);

  ShippingOption createdAt(DateTime? createdAt);

  ShippingOption updatedAt(DateTime? updatedAt);

  ShippingOption deletedAt(DateTime? deletedAt);

  ShippingOption metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShippingOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShippingOption(...).copyWith(id: 12, name: "My name")
  /// ````
  ShippingOption call({
    String? id,
    String? name,
    String? regionId,
    Region? region,
    String? profileId,
    ShippingProfile? profile,
    String? providerId,
    FulfillmentProvider? provider,
    ShippingOptionPriceType? priceType,
    int? amount,
    bool? isReturn,
    bool? adminOnly,
    List<ShippingOptionRequirement>? requirements,
    Map<String, dynamic>? data,
    bool? includesTax,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfShippingOption.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfShippingOption.copyWith.fieldName(...)`
class _$ShippingOptionCWProxyImpl implements _$ShippingOptionCWProxy {
  const _$ShippingOptionCWProxyImpl(this._value);

  final ShippingOption _value;

  @override
  ShippingOption id(String? id) => this(id: id);

  @override
  ShippingOption name(String? name) => this(name: name);

  @override
  ShippingOption regionId(String? regionId) => this(regionId: regionId);

  @override
  ShippingOption region(Region? region) => this(region: region);

  @override
  ShippingOption profileId(String? profileId) => this(profileId: profileId);

  @override
  ShippingOption profile(ShippingProfile? profile) => this(profile: profile);

  @override
  ShippingOption providerId(String? providerId) => this(providerId: providerId);

  @override
  ShippingOption provider(FulfillmentProvider? provider) =>
      this(provider: provider);

  @override
  ShippingOption priceType(ShippingOptionPriceType? priceType) =>
      this(priceType: priceType);

  @override
  ShippingOption amount(int? amount) => this(amount: amount);

  @override
  ShippingOption isReturn(bool isReturn) => this(isReturn: isReturn);

  @override
  ShippingOption adminOnly(bool adminOnly) => this(adminOnly: adminOnly);

  @override
  ShippingOption requirements(List<ShippingOptionRequirement>? requirements) =>
      this(requirements: requirements);

  @override
  ShippingOption data(Map<String, dynamic>? data) => this(data: data);

  @override
  ShippingOption includesTax(bool? includesTax) =>
      this(includesTax: includesTax);

  @override
  ShippingOption createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  ShippingOption updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  ShippingOption deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  ShippingOption metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShippingOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShippingOption(...).copyWith(id: 12, name: "My name")
  /// ````
  ShippingOption call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? regionId = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
    Object? profileId = const $CopyWithPlaceholder(),
    Object? profile = const $CopyWithPlaceholder(),
    Object? providerId = const $CopyWithPlaceholder(),
    Object? provider = const $CopyWithPlaceholder(),
    Object? priceType = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? isReturn = const $CopyWithPlaceholder(),
    Object? adminOnly = const $CopyWithPlaceholder(),
    Object? requirements = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? includesTax = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ShippingOption(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
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
      profileId: profileId == const $CopyWithPlaceholder()
          ? _value.profileId
          // ignore: cast_nullable_to_non_nullable
          : profileId as String?,
      profile: profile == const $CopyWithPlaceholder()
          ? _value.profile
          // ignore: cast_nullable_to_non_nullable
          : profile as ShippingProfile?,
      providerId: providerId == const $CopyWithPlaceholder()
          ? _value.providerId
          // ignore: cast_nullable_to_non_nullable
          : providerId as String?,
      provider: provider == const $CopyWithPlaceholder()
          ? _value.provider
          // ignore: cast_nullable_to_non_nullable
          : provider as FulfillmentProvider?,
      priceType: priceType == const $CopyWithPlaceholder()
          ? _value.priceType
          // ignore: cast_nullable_to_non_nullable
          : priceType as ShippingOptionPriceType?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int?,
      isReturn: isReturn == const $CopyWithPlaceholder() || isReturn == null
          ? _value.isReturn
          // ignore: cast_nullable_to_non_nullable
          : isReturn as bool,
      adminOnly: adminOnly == const $CopyWithPlaceholder() || adminOnly == null
          ? _value.adminOnly
          // ignore: cast_nullable_to_non_nullable
          : adminOnly as bool,
      requirements: requirements == const $CopyWithPlaceholder()
          ? _value.requirements
          // ignore: cast_nullable_to_non_nullable
          : requirements as List<ShippingOptionRequirement>?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Map<String, dynamic>?,
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

extension $ShippingOptionCopyWith on ShippingOption {
  /// Returns a callable class that can be used as follows: `instanceOfShippingOption.copyWith(...)` or like so:`instanceOfShippingOption.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ShippingOptionCWProxy get copyWith => _$ShippingOptionCWProxyImpl(this);
}
