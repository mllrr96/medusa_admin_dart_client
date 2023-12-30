// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/payment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentCWProxy {
  Payment id(String? id);

  Payment swapId(String? swapId);

  Payment swap(Swap? swap);

  Payment cartId(String? cartId);

  Payment cart(Cart? cart);

  Payment orderId(String? orderId);

  Payment order(Order? order);

  Payment amount(int? amount);

  Payment currencyCode(String? currencyCode);

  Payment currency(Currency? currency);

  Payment amountRefunded(int? amountRefunded);

  Payment providerId(String? providerId);

  Payment data(Map<String, dynamic>? data);

  Payment idempotencyKey(String? idempotencyKey);

  Payment capturedAt(DateTime? capturedAt);

  Payment canceledAt(DateTime? canceledAt);

  Payment createdAt(DateTime? createdAt);

  Payment updatedAt(DateTime? updatedAt);

  Payment metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Payment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Payment(...).copyWith(id: 12, name: "My name")
  /// ````
  Payment call({
    String? id,
    String? swapId,
    Swap? swap,
    String? cartId,
    Cart? cart,
    String? orderId,
    Order? order,
    int? amount,
    String? currencyCode,
    Currency? currency,
    int? amountRefunded,
    String? providerId,
    Map<String, dynamic>? data,
    String? idempotencyKey,
    DateTime? capturedAt,
    DateTime? canceledAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPayment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPayment.copyWith.fieldName(...)`
class _$PaymentCWProxyImpl implements _$PaymentCWProxy {
  const _$PaymentCWProxyImpl(this._value);

  final Payment _value;

  @override
  Payment id(String? id) => this(id: id);

  @override
  Payment swapId(String? swapId) => this(swapId: swapId);

  @override
  Payment swap(Swap? swap) => this(swap: swap);

  @override
  Payment cartId(String? cartId) => this(cartId: cartId);

  @override
  Payment cart(Cart? cart) => this(cart: cart);

  @override
  Payment orderId(String? orderId) => this(orderId: orderId);

  @override
  Payment order(Order? order) => this(order: order);

  @override
  Payment amount(int? amount) => this(amount: amount);

  @override
  Payment currencyCode(String? currencyCode) =>
      this(currencyCode: currencyCode);

  @override
  Payment currency(Currency? currency) => this(currency: currency);

  @override
  Payment amountRefunded(int? amountRefunded) =>
      this(amountRefunded: amountRefunded);

  @override
  Payment providerId(String? providerId) => this(providerId: providerId);

  @override
  Payment data(Map<String, dynamic>? data) => this(data: data);

  @override
  Payment idempotencyKey(String? idempotencyKey) =>
      this(idempotencyKey: idempotencyKey);

  @override
  Payment capturedAt(DateTime? capturedAt) => this(capturedAt: capturedAt);

  @override
  Payment canceledAt(DateTime? canceledAt) => this(canceledAt: canceledAt);

  @override
  Payment createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Payment updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  Payment metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Payment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Payment(...).copyWith(id: 12, name: "My name")
  /// ````
  Payment call({
    Object? id = const $CopyWithPlaceholder(),
    Object? swapId = const $CopyWithPlaceholder(),
    Object? swap = const $CopyWithPlaceholder(),
    Object? cartId = const $CopyWithPlaceholder(),
    Object? cart = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? currencyCode = const $CopyWithPlaceholder(),
    Object? currency = const $CopyWithPlaceholder(),
    Object? amountRefunded = const $CopyWithPlaceholder(),
    Object? providerId = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? idempotencyKey = const $CopyWithPlaceholder(),
    Object? capturedAt = const $CopyWithPlaceholder(),
    Object? canceledAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return Payment(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      swapId: swapId == const $CopyWithPlaceholder()
          ? _value.swapId
          // ignore: cast_nullable_to_non_nullable
          : swapId as String?,
      swap: swap == const $CopyWithPlaceholder()
          ? _value.swap
          // ignore: cast_nullable_to_non_nullable
          : swap as Swap?,
      cartId: cartId == const $CopyWithPlaceholder()
          ? _value.cartId
          // ignore: cast_nullable_to_non_nullable
          : cartId as String?,
      cart: cart == const $CopyWithPlaceholder()
          ? _value.cart
          // ignore: cast_nullable_to_non_nullable
          : cart as Cart?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as Order?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int?,
      currencyCode: currencyCode == const $CopyWithPlaceholder()
          ? _value.currencyCode
          // ignore: cast_nullable_to_non_nullable
          : currencyCode as String?,
      currency: currency == const $CopyWithPlaceholder()
          ? _value.currency
          // ignore: cast_nullable_to_non_nullable
          : currency as Currency?,
      amountRefunded: amountRefunded == const $CopyWithPlaceholder()
          ? _value.amountRefunded
          // ignore: cast_nullable_to_non_nullable
          : amountRefunded as int?,
      providerId: providerId == const $CopyWithPlaceholder()
          ? _value.providerId
          // ignore: cast_nullable_to_non_nullable
          : providerId as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Map<String, dynamic>?,
      idempotencyKey: idempotencyKey == const $CopyWithPlaceholder()
          ? _value.idempotencyKey
          // ignore: cast_nullable_to_non_nullable
          : idempotencyKey as String?,
      capturedAt: capturedAt == const $CopyWithPlaceholder()
          ? _value.capturedAt
          // ignore: cast_nullable_to_non_nullable
          : capturedAt as DateTime?,
      canceledAt: canceledAt == const $CopyWithPlaceholder()
          ? _value.canceledAt
          // ignore: cast_nullable_to_non_nullable
          : canceledAt as DateTime?,
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

extension $PaymentCopyWith on Payment {
  /// Returns a callable class that can be used as follows: `instanceOfPayment.copyWith(...)` or like so:`instanceOfPayment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentCWProxy get copyWith => _$PaymentCWProxyImpl(this);
}
