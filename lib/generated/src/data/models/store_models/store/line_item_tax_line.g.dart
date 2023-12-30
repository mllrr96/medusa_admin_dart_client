// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/line_item_tax_line.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LineItemTaxLineCWProxy {
  LineItemTaxLine id(String? id);

  LineItemTaxLine itemId(String? itemId);

  LineItemTaxLine item(LineItem? item);

  LineItemTaxLine code(String? code);

  LineItemTaxLine name(String? name);

  LineItemTaxLine rate(num? rate);

  LineItemTaxLine createdAt(DateTime? createdAt);

  LineItemTaxLine updatedAt(DateTime? updatedAt);

  LineItemTaxLine metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LineItemTaxLine(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LineItemTaxLine(...).copyWith(id: 12, name: "My name")
  /// ````
  LineItemTaxLine call({
    String? id,
    String? itemId,
    LineItem? item,
    String? code,
    String? name,
    num? rate,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLineItemTaxLine.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLineItemTaxLine.copyWith.fieldName(...)`
class _$LineItemTaxLineCWProxyImpl implements _$LineItemTaxLineCWProxy {
  const _$LineItemTaxLineCWProxyImpl(this._value);

  final LineItemTaxLine _value;

  @override
  LineItemTaxLine id(String? id) => this(id: id);

  @override
  LineItemTaxLine itemId(String? itemId) => this(itemId: itemId);

  @override
  LineItemTaxLine item(LineItem? item) => this(item: item);

  @override
  LineItemTaxLine code(String? code) => this(code: code);

  @override
  LineItemTaxLine name(String? name) => this(name: name);

  @override
  LineItemTaxLine rate(num? rate) => this(rate: rate);

  @override
  LineItemTaxLine createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  LineItemTaxLine updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  LineItemTaxLine metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LineItemTaxLine(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LineItemTaxLine(...).copyWith(id: 12, name: "My name")
  /// ````
  LineItemTaxLine call({
    Object? id = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? item = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? rate = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return LineItemTaxLine(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      item: item == const $CopyWithPlaceholder()
          ? _value.item
          // ignore: cast_nullable_to_non_nullable
          : item as LineItem?,
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      rate: rate == const $CopyWithPlaceholder()
          ? _value.rate
          // ignore: cast_nullable_to_non_nullable
          : rate as num?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, dynamic>?,
    );
  }
}

extension $LineItemTaxLineCopyWith on LineItemTaxLine {
  /// Returns a callable class that can be used as follows: `instanceOfLineItemTaxLine.copyWith(...)` or like so:`instanceOfLineItemTaxLine.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LineItemTaxLineCWProxy get copyWith => _$LineItemTaxLineCWProxyImpl(this);
}
