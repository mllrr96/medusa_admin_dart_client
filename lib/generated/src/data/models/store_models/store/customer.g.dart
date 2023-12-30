// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/customer.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerCWProxy {
  Customer email(String email);

  Customer id(String? id);

  Customer firstName(String? firstName);

  Customer lastName(String? lastName);

  Customer billingAddressId(String? billingAddressId);

  Customer billingAddress(Address? billingAddress);

  Customer shippingAddresses(List<Address>? shippingAddresses);

  Customer phone(String? phone);

  Customer hasAccount(bool hasAccount);

  Customer orders(List<Order>? orders);

  Customer customerGroup(List<CustomerGroup>? customerGroup);

  Customer createdAt(DateTime? createdAt);

  Customer updatedAt(DateTime? updatedAt);

  Customer deletedAt(DateTime? deletedAt);

  Customer metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Customer(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Customer(...).copyWith(id: 12, name: "My name")
  /// ````
  Customer call({
    String? email,
    String? id,
    String? firstName,
    String? lastName,
    String? billingAddressId,
    Address? billingAddress,
    List<Address>? shippingAddresses,
    String? phone,
    bool? hasAccount,
    List<Order>? orders,
    List<CustomerGroup>? customerGroup,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomer.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomer.copyWith.fieldName(...)`
class _$CustomerCWProxyImpl implements _$CustomerCWProxy {
  const _$CustomerCWProxyImpl(this._value);

  final Customer _value;

  @override
  Customer email(String email) => this(email: email);

  @override
  Customer id(String? id) => this(id: id);

  @override
  Customer firstName(String? firstName) => this(firstName: firstName);

  @override
  Customer lastName(String? lastName) => this(lastName: lastName);

  @override
  Customer billingAddressId(String? billingAddressId) =>
      this(billingAddressId: billingAddressId);

  @override
  Customer billingAddress(Address? billingAddress) =>
      this(billingAddress: billingAddress);

  @override
  Customer shippingAddresses(List<Address>? shippingAddresses) =>
      this(shippingAddresses: shippingAddresses);

  @override
  Customer phone(String? phone) => this(phone: phone);

  @override
  Customer hasAccount(bool hasAccount) => this(hasAccount: hasAccount);

  @override
  Customer orders(List<Order>? orders) => this(orders: orders);

  @override
  Customer customerGroup(List<CustomerGroup>? customerGroup) =>
      this(customerGroup: customerGroup);

  @override
  Customer createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Customer updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  Customer deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  Customer metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Customer(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Customer(...).copyWith(id: 12, name: "My name")
  /// ````
  Customer call({
    Object? email = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? billingAddressId = const $CopyWithPlaceholder(),
    Object? billingAddress = const $CopyWithPlaceholder(),
    Object? shippingAddresses = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? hasAccount = const $CopyWithPlaceholder(),
    Object? orders = const $CopyWithPlaceholder(),
    Object? customerGroup = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return Customer(
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String?,
      billingAddressId: billingAddressId == const $CopyWithPlaceholder()
          ? _value.billingAddressId
          // ignore: cast_nullable_to_non_nullable
          : billingAddressId as String?,
      billingAddress: billingAddress == const $CopyWithPlaceholder()
          ? _value.billingAddress
          // ignore: cast_nullable_to_non_nullable
          : billingAddress as Address?,
      shippingAddresses: shippingAddresses == const $CopyWithPlaceholder()
          ? _value.shippingAddresses
          // ignore: cast_nullable_to_non_nullable
          : shippingAddresses as List<Address>?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      hasAccount:
          hasAccount == const $CopyWithPlaceholder() || hasAccount == null
              ? _value.hasAccount
              // ignore: cast_nullable_to_non_nullable
              : hasAccount as bool,
      orders: orders == const $CopyWithPlaceholder()
          ? _value.orders
          // ignore: cast_nullable_to_non_nullable
          : orders as List<Order>?,
      customerGroup: customerGroup == const $CopyWithPlaceholder()
          ? _value.customerGroup
          // ignore: cast_nullable_to_non_nullable
          : customerGroup as List<CustomerGroup>?,
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

extension $CustomerCopyWith on Customer {
  /// Returns a callable class that can be used as follows: `instanceOfCustomer.copyWith(...)` or like so:`instanceOfCustomer.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerCWProxy get copyWith => _$CustomerCWProxyImpl(this);
}
