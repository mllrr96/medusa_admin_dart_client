// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/country.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CountryCWProxy {
  Country id(int? id);

  Country iso2(String? iso2);

  Country iso3(String? iso3);

  Country numCode(int? numCode);

  Country name(String? name);

  Country regionId(String? regionId);

  Country displayName(String? displayName);

  Country region(Region? region);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Country(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Country(...).copyWith(id: 12, name: "My name")
  /// ````
  Country call({
    int? id,
    String? iso2,
    String? iso3,
    int? numCode,
    String? name,
    String? regionId,
    String? displayName,
    Region? region,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCountry.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCountry.copyWith.fieldName(...)`
class _$CountryCWProxyImpl implements _$CountryCWProxy {
  const _$CountryCWProxyImpl(this._value);

  final Country _value;

  @override
  Country id(int? id) => this(id: id);

  @override
  Country iso2(String? iso2) => this(iso2: iso2);

  @override
  Country iso3(String? iso3) => this(iso3: iso3);

  @override
  Country numCode(int? numCode) => this(numCode: numCode);

  @override
  Country name(String? name) => this(name: name);

  @override
  Country regionId(String? regionId) => this(regionId: regionId);

  @override
  Country displayName(String? displayName) => this(displayName: displayName);

  @override
  Country region(Region? region) => this(region: region);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Country(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Country(...).copyWith(id: 12, name: "My name")
  /// ````
  Country call({
    Object? id = const $CopyWithPlaceholder(),
    Object? iso2 = const $CopyWithPlaceholder(),
    Object? iso3 = const $CopyWithPlaceholder(),
    Object? numCode = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? regionId = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
  }) {
    return Country(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      iso2: iso2 == const $CopyWithPlaceholder()
          ? _value.iso2
          // ignore: cast_nullable_to_non_nullable
          : iso2 as String?,
      iso3: iso3 == const $CopyWithPlaceholder()
          ? _value.iso3
          // ignore: cast_nullable_to_non_nullable
          : iso3 as String?,
      numCode: numCode == const $CopyWithPlaceholder()
          ? _value.numCode
          // ignore: cast_nullable_to_non_nullable
          : numCode as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      regionId: regionId == const $CopyWithPlaceholder()
          ? _value.regionId
          // ignore: cast_nullable_to_non_nullable
          : regionId as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
      region: region == const $CopyWithPlaceholder()
          ? _value.region
          // ignore: cast_nullable_to_non_nullable
          : region as Region?,
    );
  }
}

extension $CountryCopyWith on Country {
  /// Returns a callable class that can be used as follows: `instanceOfCountry.copyWith(...)` or like so:`instanceOfCountry.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CountryCWProxy get copyWith => _$CountryCWProxyImpl(this);
}
