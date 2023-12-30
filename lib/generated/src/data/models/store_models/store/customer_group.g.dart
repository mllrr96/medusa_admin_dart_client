// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/customer_group.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerGroupCWProxy {
  CustomerGroup id(String? id);

  CustomerGroup name(String? name);

  CustomerGroup customers(List<Customer>? customers);

  CustomerGroup priceLists(List<PriceList>? priceLists);

  CustomerGroup createdAt(DateTime? createdAt);

  CustomerGroup updatedAt(DateTime? updatedAt);

  CustomerGroup deletedAt(DateTime? deletedAt);

  CustomerGroup metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomerGroup(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomerGroup(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomerGroup call({
    String? id,
    String? name,
    List<Customer>? customers,
    List<PriceList>? priceLists,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomerGroup.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomerGroup.copyWith.fieldName(...)`
class _$CustomerGroupCWProxyImpl implements _$CustomerGroupCWProxy {
  const _$CustomerGroupCWProxyImpl(this._value);

  final CustomerGroup _value;

  @override
  CustomerGroup id(String? id) => this(id: id);

  @override
  CustomerGroup name(String? name) => this(name: name);

  @override
  CustomerGroup customers(List<Customer>? customers) =>
      this(customers: customers);

  @override
  CustomerGroup priceLists(List<PriceList>? priceLists) =>
      this(priceLists: priceLists);

  @override
  CustomerGroup createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  CustomerGroup updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  CustomerGroup deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  CustomerGroup metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomerGroup(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomerGroup(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomerGroup call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? customers = const $CopyWithPlaceholder(),
    Object? priceLists = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return CustomerGroup(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      customers: customers == const $CopyWithPlaceholder()
          ? _value.customers
          // ignore: cast_nullable_to_non_nullable
          : customers as List<Customer>?,
      priceLists: priceLists == const $CopyWithPlaceholder()
          ? _value.priceLists
          // ignore: cast_nullable_to_non_nullable
          : priceLists as List<PriceList>?,
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

extension $CustomerGroupCopyWith on CustomerGroup {
  /// Returns a callable class that can be used as follows: `instanceOfCustomerGroup.copyWith(...)` or like so:`instanceOfCustomerGroup.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerGroupCWProxy get copyWith => _$CustomerGroupCWProxyImpl(this);
}
