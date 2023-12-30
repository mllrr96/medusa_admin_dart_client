// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/tax_provider.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TaxProviderCWProxy {
  TaxProvider id(String? id);

  TaxProvider isInstalled(bool isInstalled);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaxProvider(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaxProvider(...).copyWith(id: 12, name: "My name")
  /// ````
  TaxProvider call({
    String? id,
    bool? isInstalled,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTaxProvider.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTaxProvider.copyWith.fieldName(...)`
class _$TaxProviderCWProxyImpl implements _$TaxProviderCWProxy {
  const _$TaxProviderCWProxyImpl(this._value);

  final TaxProvider _value;

  @override
  TaxProvider id(String? id) => this(id: id);

  @override
  TaxProvider isInstalled(bool isInstalled) => this(isInstalled: isInstalled);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaxProvider(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaxProvider(...).copyWith(id: 12, name: "My name")
  /// ````
  TaxProvider call({
    Object? id = const $CopyWithPlaceholder(),
    Object? isInstalled = const $CopyWithPlaceholder(),
  }) {
    return TaxProvider(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      isInstalled:
          isInstalled == const $CopyWithPlaceholder() || isInstalled == null
              ? _value.isInstalled
              // ignore: cast_nullable_to_non_nullable
              : isInstalled as bool,
    );
  }
}

extension $TaxProviderCopyWith on TaxProvider {
  /// Returns a callable class that can be used as follows: `instanceOfTaxProvider.copyWith(...)` or like so:`instanceOfTaxProvider.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TaxProviderCWProxy get copyWith => _$TaxProviderCWProxyImpl(this);
}
