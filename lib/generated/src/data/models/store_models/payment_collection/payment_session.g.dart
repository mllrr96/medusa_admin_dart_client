// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/payment_collection/payment_session.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentSessionCWProxy {
  PaymentSession id(String? id);

  PaymentSession cartId(String? cartId);

  PaymentSession cart(Cart? cart);

  PaymentSession providerId(String? providerId);

  PaymentSession isSelected(bool? isSelected);

  PaymentSession status(PaymentSessionStatus? status);

  PaymentSession data(Map<String, dynamic>? data);

  PaymentSession idempotencyKey(String? idempotencyKey);

  PaymentSession amount(int? amount);

  PaymentSession paymentAuthorizedAt(DateTime? paymentAuthorizedAt);

  PaymentSession createdAt(DateTime? createdAt);

  PaymentSession updatedAt(DateTime? updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaymentSession(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaymentSession(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentSession call({
    String? id,
    String? cartId,
    Cart? cart,
    String? providerId,
    bool? isSelected,
    PaymentSessionStatus? status,
    Map<String, dynamic>? data,
    String? idempotencyKey,
    int? amount,
    DateTime? paymentAuthorizedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaymentSession.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaymentSession.copyWith.fieldName(...)`
class _$PaymentSessionCWProxyImpl implements _$PaymentSessionCWProxy {
  const _$PaymentSessionCWProxyImpl(this._value);

  final PaymentSession _value;

  @override
  PaymentSession id(String? id) => this(id: id);

  @override
  PaymentSession cartId(String? cartId) => this(cartId: cartId);

  @override
  PaymentSession cart(Cart? cart) => this(cart: cart);

  @override
  PaymentSession providerId(String? providerId) => this(providerId: providerId);

  @override
  PaymentSession isSelected(bool? isSelected) => this(isSelected: isSelected);

  @override
  PaymentSession status(PaymentSessionStatus? status) => this(status: status);

  @override
  PaymentSession data(Map<String, dynamic>? data) => this(data: data);

  @override
  PaymentSession idempotencyKey(String? idempotencyKey) =>
      this(idempotencyKey: idempotencyKey);

  @override
  PaymentSession amount(int? amount) => this(amount: amount);

  @override
  PaymentSession paymentAuthorizedAt(DateTime? paymentAuthorizedAt) =>
      this(paymentAuthorizedAt: paymentAuthorizedAt);

  @override
  PaymentSession createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  PaymentSession updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaymentSession(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaymentSession(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentSession call({
    Object? id = const $CopyWithPlaceholder(),
    Object? cartId = const $CopyWithPlaceholder(),
    Object? cart = const $CopyWithPlaceholder(),
    Object? providerId = const $CopyWithPlaceholder(),
    Object? isSelected = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? idempotencyKey = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? paymentAuthorizedAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return PaymentSession(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      cartId: cartId == const $CopyWithPlaceholder()
          ? _value.cartId
          // ignore: cast_nullable_to_non_nullable
          : cartId as String?,
      cart: cart == const $CopyWithPlaceholder()
          ? _value.cart
          // ignore: cast_nullable_to_non_nullable
          : cart as Cart?,
      providerId: providerId == const $CopyWithPlaceholder()
          ? _value.providerId
          // ignore: cast_nullable_to_non_nullable
          : providerId as String?,
      isSelected: isSelected == const $CopyWithPlaceholder()
          ? _value.isSelected
          // ignore: cast_nullable_to_non_nullable
          : isSelected as bool?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as PaymentSessionStatus?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Map<String, dynamic>?,
      idempotencyKey: idempotencyKey == const $CopyWithPlaceholder()
          ? _value.idempotencyKey
          // ignore: cast_nullable_to_non_nullable
          : idempotencyKey as String?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int?,
      paymentAuthorizedAt: paymentAuthorizedAt == const $CopyWithPlaceholder()
          ? _value.paymentAuthorizedAt
          // ignore: cast_nullable_to_non_nullable
          : paymentAuthorizedAt as DateTime?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $PaymentSessionCopyWith on PaymentSession {
  /// Returns a callable class that can be used as follows: `instanceOfPaymentSession.copyWith(...)` or like so:`instanceOfPaymentSession.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentSessionCWProxy get copyWith => _$PaymentSessionCWProxyImpl(this);
}
