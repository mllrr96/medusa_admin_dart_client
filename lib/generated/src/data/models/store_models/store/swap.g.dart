// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/swap.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SwapCWProxy {
  Swap id(String? id);

  Swap fulfillmentStatus(SwapFulfillmentStatus? fulfillmentStatus);

  Swap paymentStatus(SwapPaymentStatus? paymentStatus);

  Swap orderId(String? orderId);

  Swap order(Order? order);

  Swap additionalItems(List<LineItem>? additionalItems);

  Swap returnOrder(Return? returnOrder);

  Swap fulfillments(List<Fulfillment>? fulfillments);

  Swap payment(Payment? payment);

  Swap differenceDue(int? differenceDue);

  Swap shippingAddressId(String? shippingAddressId);

  Swap shippingAddress(Address? shippingAddress);

  Swap shippingMethods(List<ShippingMethod>? shippingMethods);

  Swap cartId(String? cartId);

  Swap cart(Cart? cart);

  Swap confirmedAt(DateTime? confirmedAt);

  Swap canceledAt(DateTime? canceledAt);

  Swap noNotification(bool? noNotification);

  Swap allowBackorder(bool? allowBackorder);

  Swap idempotencyKey(String? idempotencyKey);

  Swap metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Swap(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Swap(...).copyWith(id: 12, name: "My name")
  /// ````
  Swap call({
    String? id,
    SwapFulfillmentStatus? fulfillmentStatus,
    SwapPaymentStatus? paymentStatus,
    String? orderId,
    Order? order,
    List<LineItem>? additionalItems,
    Return? returnOrder,
    List<Fulfillment>? fulfillments,
    Payment? payment,
    int? differenceDue,
    String? shippingAddressId,
    Address? shippingAddress,
    List<ShippingMethod>? shippingMethods,
    String? cartId,
    Cart? cart,
    DateTime? confirmedAt,
    DateTime? canceledAt,
    bool? noNotification,
    bool? allowBackorder,
    String? idempotencyKey,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSwap.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSwap.copyWith.fieldName(...)`
class _$SwapCWProxyImpl implements _$SwapCWProxy {
  const _$SwapCWProxyImpl(this._value);

  final Swap _value;

  @override
  Swap id(String? id) => this(id: id);

  @override
  Swap fulfillmentStatus(SwapFulfillmentStatus? fulfillmentStatus) =>
      this(fulfillmentStatus: fulfillmentStatus);

  @override
  Swap paymentStatus(SwapPaymentStatus? paymentStatus) =>
      this(paymentStatus: paymentStatus);

  @override
  Swap orderId(String? orderId) => this(orderId: orderId);

  @override
  Swap order(Order? order) => this(order: order);

  @override
  Swap additionalItems(List<LineItem>? additionalItems) =>
      this(additionalItems: additionalItems);

  @override
  Swap returnOrder(Return? returnOrder) => this(returnOrder: returnOrder);

  @override
  Swap fulfillments(List<Fulfillment>? fulfillments) =>
      this(fulfillments: fulfillments);

  @override
  Swap payment(Payment? payment) => this(payment: payment);

  @override
  Swap differenceDue(int? differenceDue) => this(differenceDue: differenceDue);

  @override
  Swap shippingAddressId(String? shippingAddressId) =>
      this(shippingAddressId: shippingAddressId);

  @override
  Swap shippingAddress(Address? shippingAddress) =>
      this(shippingAddress: shippingAddress);

  @override
  Swap shippingMethods(List<ShippingMethod>? shippingMethods) =>
      this(shippingMethods: shippingMethods);

  @override
  Swap cartId(String? cartId) => this(cartId: cartId);

  @override
  Swap cart(Cart? cart) => this(cart: cart);

  @override
  Swap confirmedAt(DateTime? confirmedAt) => this(confirmedAt: confirmedAt);

  @override
  Swap canceledAt(DateTime? canceledAt) => this(canceledAt: canceledAt);

  @override
  Swap noNotification(bool? noNotification) =>
      this(noNotification: noNotification);

  @override
  Swap allowBackorder(bool? allowBackorder) =>
      this(allowBackorder: allowBackorder);

  @override
  Swap idempotencyKey(String? idempotencyKey) =>
      this(idempotencyKey: idempotencyKey);

  @override
  Swap metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Swap(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Swap(...).copyWith(id: 12, name: "My name")
  /// ````
  Swap call({
    Object? id = const $CopyWithPlaceholder(),
    Object? fulfillmentStatus = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? additionalItems = const $CopyWithPlaceholder(),
    Object? returnOrder = const $CopyWithPlaceholder(),
    Object? fulfillments = const $CopyWithPlaceholder(),
    Object? payment = const $CopyWithPlaceholder(),
    Object? differenceDue = const $CopyWithPlaceholder(),
    Object? shippingAddressId = const $CopyWithPlaceholder(),
    Object? shippingAddress = const $CopyWithPlaceholder(),
    Object? shippingMethods = const $CopyWithPlaceholder(),
    Object? cartId = const $CopyWithPlaceholder(),
    Object? cart = const $CopyWithPlaceholder(),
    Object? confirmedAt = const $CopyWithPlaceholder(),
    Object? canceledAt = const $CopyWithPlaceholder(),
    Object? noNotification = const $CopyWithPlaceholder(),
    Object? allowBackorder = const $CopyWithPlaceholder(),
    Object? idempotencyKey = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return Swap(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      fulfillmentStatus: fulfillmentStatus == const $CopyWithPlaceholder()
          ? _value.fulfillmentStatus
          // ignore: cast_nullable_to_non_nullable
          : fulfillmentStatus as SwapFulfillmentStatus?,
      paymentStatus: paymentStatus == const $CopyWithPlaceholder()
          ? _value.paymentStatus
          // ignore: cast_nullable_to_non_nullable
          : paymentStatus as SwapPaymentStatus?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as Order?,
      additionalItems: additionalItems == const $CopyWithPlaceholder()
          ? _value.additionalItems
          // ignore: cast_nullable_to_non_nullable
          : additionalItems as List<LineItem>?,
      returnOrder: returnOrder == const $CopyWithPlaceholder()
          ? _value.returnOrder
          // ignore: cast_nullable_to_non_nullable
          : returnOrder as Return?,
      fulfillments: fulfillments == const $CopyWithPlaceholder()
          ? _value.fulfillments
          // ignore: cast_nullable_to_non_nullable
          : fulfillments as List<Fulfillment>?,
      payment: payment == const $CopyWithPlaceholder()
          ? _value.payment
          // ignore: cast_nullable_to_non_nullable
          : payment as Payment?,
      differenceDue: differenceDue == const $CopyWithPlaceholder()
          ? _value.differenceDue
          // ignore: cast_nullable_to_non_nullable
          : differenceDue as int?,
      shippingAddressId: shippingAddressId == const $CopyWithPlaceholder()
          ? _value.shippingAddressId
          // ignore: cast_nullable_to_non_nullable
          : shippingAddressId as String?,
      shippingAddress: shippingAddress == const $CopyWithPlaceholder()
          ? _value.shippingAddress
          // ignore: cast_nullable_to_non_nullable
          : shippingAddress as Address?,
      shippingMethods: shippingMethods == const $CopyWithPlaceholder()
          ? _value.shippingMethods
          // ignore: cast_nullable_to_non_nullable
          : shippingMethods as List<ShippingMethod>?,
      cartId: cartId == const $CopyWithPlaceholder()
          ? _value.cartId
          // ignore: cast_nullable_to_non_nullable
          : cartId as String?,
      cart: cart == const $CopyWithPlaceholder()
          ? _value.cart
          // ignore: cast_nullable_to_non_nullable
          : cart as Cart?,
      confirmedAt: confirmedAt == const $CopyWithPlaceholder()
          ? _value.confirmedAt
          // ignore: cast_nullable_to_non_nullable
          : confirmedAt as DateTime?,
      canceledAt: canceledAt == const $CopyWithPlaceholder()
          ? _value.canceledAt
          // ignore: cast_nullable_to_non_nullable
          : canceledAt as DateTime?,
      noNotification: noNotification == const $CopyWithPlaceholder()
          ? _value.noNotification
          // ignore: cast_nullable_to_non_nullable
          : noNotification as bool?,
      allowBackorder: allowBackorder == const $CopyWithPlaceholder()
          ? _value.allowBackorder
          // ignore: cast_nullable_to_non_nullable
          : allowBackorder as bool?,
      idempotencyKey: idempotencyKey == const $CopyWithPlaceholder()
          ? _value.idempotencyKey
          // ignore: cast_nullable_to_non_nullable
          : idempotencyKey as String?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, dynamic>?,
    );
  }
}

extension $SwapCopyWith on Swap {
  /// Returns a callable class that can be used as follows: `instanceOfSwap.copyWith(...)` or like so:`instanceOfSwap.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SwapCWProxy get copyWith => _$SwapCWProxyImpl(this);
}
