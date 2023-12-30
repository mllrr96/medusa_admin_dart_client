// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/currency.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CurrencyCWProxy {
  Currency code(String? code);

  Currency symbol(String? symbol);

  Currency symbolNative(String? symbolNative);

  Currency name(String? name);

  Currency includeTax(bool? includeTax);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Currency(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Currency(...).copyWith(id: 12, name: "My name")
  /// ````
  Currency call({
    String? code,
    String? symbol,
    String? symbolNative,
    String? name,
    bool? includeTax,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCurrency.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCurrency.copyWith.fieldName(...)`
class _$CurrencyCWProxyImpl implements _$CurrencyCWProxy {
  const _$CurrencyCWProxyImpl(this._value);

  final Currency _value;

  @override
  Currency code(String? code) => this(code: code);

  @override
  Currency symbol(String? symbol) => this(symbol: symbol);

  @override
  Currency symbolNative(String? symbolNative) =>
      this(symbolNative: symbolNative);

  @override
  Currency name(String? name) => this(name: name);

  @override
  Currency includeTax(bool? includeTax) => this(includeTax: includeTax);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Currency(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Currency(...).copyWith(id: 12, name: "My name")
  /// ````
  Currency call({
    Object? code = const $CopyWithPlaceholder(),
    Object? symbol = const $CopyWithPlaceholder(),
    Object? symbolNative = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? includeTax = const $CopyWithPlaceholder(),
  }) {
    return Currency(
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String?,
      symbol: symbol == const $CopyWithPlaceholder()
          ? _value.symbol
          // ignore: cast_nullable_to_non_nullable
          : symbol as String?,
      symbolNative: symbolNative == const $CopyWithPlaceholder()
          ? _value.symbolNative
          // ignore: cast_nullable_to_non_nullable
          : symbolNative as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      includeTax: includeTax == const $CopyWithPlaceholder()
          ? _value.includeTax
          // ignore: cast_nullable_to_non_nullable
          : includeTax as bool?,
    );
  }
}

extension $CurrencyCopyWith on Currency {
  /// Returns a callable class that can be used as follows: `instanceOfCurrency.copyWith(...)` or like so:`instanceOfCurrency.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CurrencyCWProxy get copyWith => _$CurrencyCWProxyImpl(this);
}
