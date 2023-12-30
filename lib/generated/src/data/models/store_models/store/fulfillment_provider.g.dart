// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/fulfillment_provider.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FulfillmentProviderCWProxy {
  FulfillmentProvider id(String? id);

  FulfillmentProvider isInstalled(bool isInstalled);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FulfillmentProvider(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FulfillmentProvider(...).copyWith(id: 12, name: "My name")
  /// ````
  FulfillmentProvider call({
    String? id,
    bool? isInstalled,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFulfillmentProvider.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFulfillmentProvider.copyWith.fieldName(...)`
class _$FulfillmentProviderCWProxyImpl implements _$FulfillmentProviderCWProxy {
  const _$FulfillmentProviderCWProxyImpl(this._value);

  final FulfillmentProvider _value;

  @override
  FulfillmentProvider id(String? id) => this(id: id);

  @override
  FulfillmentProvider isInstalled(bool isInstalled) =>
      this(isInstalled: isInstalled);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FulfillmentProvider(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FulfillmentProvider(...).copyWith(id: 12, name: "My name")
  /// ````
  FulfillmentProvider call({
    Object? id = const $CopyWithPlaceholder(),
    Object? isInstalled = const $CopyWithPlaceholder(),
  }) {
    return FulfillmentProvider(
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

extension $FulfillmentProviderCopyWith on FulfillmentProvider {
  /// Returns a callable class that can be used as follows: `instanceOfFulfillmentProvider.copyWith(...)` or like so:`instanceOfFulfillmentProvider.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FulfillmentProviderCWProxy get copyWith =>
      _$FulfillmentProviderCWProxyImpl(this);
}
