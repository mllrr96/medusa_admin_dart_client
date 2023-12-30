// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/orders/claim_order.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClaimOrderCWProxy {
  ClaimOrder id(String? id);

  ClaimOrder type(ClaimType? type);

  ClaimOrder paymentStatus(ClaimPaymentStatus paymentStatus);

  ClaimOrder fulfillmentStatus(ClaimFulfillmentStatus fulfillmentStatus);

  ClaimOrder claimItems(List<ClaimItem>? claimItems);

  ClaimOrder additionalItems(List<LineItem>? additionalItems);

  ClaimOrder orderId(String? orderId);

  ClaimOrder order(Order? order);

  ClaimOrder returnOrder(Return? returnOrder);

  ClaimOrder shippingAddressId(String? shippingAddressId);

  ClaimOrder shippingAddress(Address? shippingAddress);

  ClaimOrder shippingMethods(List<ShippingMethod>? shippingMethods);

  ClaimOrder fulfillments(List<Fulfillment>? fulfillments);

  ClaimOrder refundAmount(int? refundAmount);

  ClaimOrder canceledAt(DateTime? canceledAt);

  ClaimOrder noNotification(bool? noNotification);

  ClaimOrder idempotencyKey(String? idempotencyKey);

  ClaimOrder createdAt(DateTime? createdAt);

  ClaimOrder deletedAt(DateTime? deletedAt);

  ClaimOrder updatedAt(DateTime? updatedAt);

  ClaimOrder metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClaimOrder(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClaimOrder(...).copyWith(id: 12, name: "My name")
  /// ````
  ClaimOrder call({
    String? id,
    ClaimType? type,
    ClaimPaymentStatus? paymentStatus,
    ClaimFulfillmentStatus? fulfillmentStatus,
    List<ClaimItem>? claimItems,
    List<LineItem>? additionalItems,
    String? orderId,
    Order? order,
    Return? returnOrder,
    String? shippingAddressId,
    Address? shippingAddress,
    List<ShippingMethod>? shippingMethods,
    List<Fulfillment>? fulfillments,
    int? refundAmount,
    DateTime? canceledAt,
    bool? noNotification,
    String? idempotencyKey,
    DateTime? createdAt,
    DateTime? deletedAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClaimOrder.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClaimOrder.copyWith.fieldName(...)`
class _$ClaimOrderCWProxyImpl implements _$ClaimOrderCWProxy {
  const _$ClaimOrderCWProxyImpl(this._value);

  final ClaimOrder _value;

  @override
  ClaimOrder id(String? id) => this(id: id);

  @override
  ClaimOrder type(ClaimType? type) => this(type: type);

  @override
  ClaimOrder paymentStatus(ClaimPaymentStatus paymentStatus) =>
      this(paymentStatus: paymentStatus);

  @override
  ClaimOrder fulfillmentStatus(ClaimFulfillmentStatus fulfillmentStatus) =>
      this(fulfillmentStatus: fulfillmentStatus);

  @override
  ClaimOrder claimItems(List<ClaimItem>? claimItems) =>
      this(claimItems: claimItems);

  @override
  ClaimOrder additionalItems(List<LineItem>? additionalItems) =>
      this(additionalItems: additionalItems);

  @override
  ClaimOrder orderId(String? orderId) => this(orderId: orderId);

  @override
  ClaimOrder order(Order? order) => this(order: order);

  @override
  ClaimOrder returnOrder(Return? returnOrder) => this(returnOrder: returnOrder);

  @override
  ClaimOrder shippingAddressId(String? shippingAddressId) =>
      this(shippingAddressId: shippingAddressId);

  @override
  ClaimOrder shippingAddress(Address? shippingAddress) =>
      this(shippingAddress: shippingAddress);

  @override
  ClaimOrder shippingMethods(List<ShippingMethod>? shippingMethods) =>
      this(shippingMethods: shippingMethods);

  @override
  ClaimOrder fulfillments(List<Fulfillment>? fulfillments) =>
      this(fulfillments: fulfillments);

  @override
  ClaimOrder refundAmount(int? refundAmount) =>
      this(refundAmount: refundAmount);

  @override
  ClaimOrder canceledAt(DateTime? canceledAt) => this(canceledAt: canceledAt);

  @override
  ClaimOrder noNotification(bool? noNotification) =>
      this(noNotification: noNotification);

  @override
  ClaimOrder idempotencyKey(String? idempotencyKey) =>
      this(idempotencyKey: idempotencyKey);

  @override
  ClaimOrder createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  ClaimOrder deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  ClaimOrder updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  ClaimOrder metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClaimOrder(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClaimOrder(...).copyWith(id: 12, name: "My name")
  /// ````
  ClaimOrder call({
    Object? id = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? fulfillmentStatus = const $CopyWithPlaceholder(),
    Object? claimItems = const $CopyWithPlaceholder(),
    Object? additionalItems = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? returnOrder = const $CopyWithPlaceholder(),
    Object? shippingAddressId = const $CopyWithPlaceholder(),
    Object? shippingAddress = const $CopyWithPlaceholder(),
    Object? shippingMethods = const $CopyWithPlaceholder(),
    Object? fulfillments = const $CopyWithPlaceholder(),
    Object? refundAmount = const $CopyWithPlaceholder(),
    Object? canceledAt = const $CopyWithPlaceholder(),
    Object? noNotification = const $CopyWithPlaceholder(),
    Object? idempotencyKey = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ClaimOrder(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as ClaimType?,
      paymentStatus:
          paymentStatus == const $CopyWithPlaceholder() || paymentStatus == null
              ? _value.paymentStatus
              // ignore: cast_nullable_to_non_nullable
              : paymentStatus as ClaimPaymentStatus,
      fulfillmentStatus: fulfillmentStatus == const $CopyWithPlaceholder() ||
              fulfillmentStatus == null
          ? _value.fulfillmentStatus
          // ignore: cast_nullable_to_non_nullable
          : fulfillmentStatus as ClaimFulfillmentStatus,
      claimItems: claimItems == const $CopyWithPlaceholder()
          ? _value.claimItems
          // ignore: cast_nullable_to_non_nullable
          : claimItems as List<ClaimItem>?,
      additionalItems: additionalItems == const $CopyWithPlaceholder()
          ? _value.additionalItems
          // ignore: cast_nullable_to_non_nullable
          : additionalItems as List<LineItem>?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as Order?,
      returnOrder: returnOrder == const $CopyWithPlaceholder()
          ? _value.returnOrder
          // ignore: cast_nullable_to_non_nullable
          : returnOrder as Return?,
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
      fulfillments: fulfillments == const $CopyWithPlaceholder()
          ? _value.fulfillments
          // ignore: cast_nullable_to_non_nullable
          : fulfillments as List<Fulfillment>?,
      refundAmount: refundAmount == const $CopyWithPlaceholder()
          ? _value.refundAmount
          // ignore: cast_nullable_to_non_nullable
          : refundAmount as int?,
      canceledAt: canceledAt == const $CopyWithPlaceholder()
          ? _value.canceledAt
          // ignore: cast_nullable_to_non_nullable
          : canceledAt as DateTime?,
      noNotification: noNotification == const $CopyWithPlaceholder()
          ? _value.noNotification
          // ignore: cast_nullable_to_non_nullable
          : noNotification as bool?,
      idempotencyKey: idempotencyKey == const $CopyWithPlaceholder()
          ? _value.idempotencyKey
          // ignore: cast_nullable_to_non_nullable
          : idempotencyKey as String?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      deletedAt: deletedAt == const $CopyWithPlaceholder()
          ? _value.deletedAt
          // ignore: cast_nullable_to_non_nullable
          : deletedAt as DateTime?,
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

extension $ClaimOrderCopyWith on ClaimOrder {
  /// Returns a callable class that can be used as follows: `instanceOfClaimOrder.copyWith(...)` or like so:`instanceOfClaimOrder.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClaimOrderCWProxy get copyWith => _$ClaimOrderCWProxyImpl(this);
}
