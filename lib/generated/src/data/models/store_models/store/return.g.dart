// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/return.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReturnCWProxy {
  Return id(String? id);

  Return status(ReturnStatus status);

  Return items(List<ReturnItem>? items);

  Return swapId(String? swapId);

  Return locationId(String? locationId);

  Return swap(Swap? swap);

  Return orderId(String? orderId);

  Return order(Order? order);

  Return claimOrderId(String? claimOrderId);

  Return claimOrder(ClaimOrder? claimOrder);

  Return shippingMethod(List<ShippingMethod>? shippingMethod);

  Return shippingData(Map<String, dynamic>? shippingData);

  Return refundAmount(int? refundAmount);

  Return noNotification(bool? noNotification);

  Return idempotencyKey(String? idempotencyKey);

  Return receivedAt(DateTime? receivedAt);

  Return createdAt(DateTime? createdAt);

  Return updatedAt(DateTime? updatedAt);

  Return metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Return(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Return(...).copyWith(id: 12, name: "My name")
  /// ````
  Return call({
    String? id,
    ReturnStatus? status,
    List<ReturnItem>? items,
    String? swapId,
    String? locationId,
    Swap? swap,
    String? orderId,
    Order? order,
    String? claimOrderId,
    ClaimOrder? claimOrder,
    List<ShippingMethod>? shippingMethod,
    Map<String, dynamic>? shippingData,
    int? refundAmount,
    bool? noNotification,
    String? idempotencyKey,
    DateTime? receivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReturn.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReturn.copyWith.fieldName(...)`
class _$ReturnCWProxyImpl implements _$ReturnCWProxy {
  const _$ReturnCWProxyImpl(this._value);

  final Return _value;

  @override
  Return id(String? id) => this(id: id);

  @override
  Return status(ReturnStatus status) => this(status: status);

  @override
  Return items(List<ReturnItem>? items) => this(items: items);

  @override
  Return swapId(String? swapId) => this(swapId: swapId);

  @override
  Return locationId(String? locationId) => this(locationId: locationId);

  @override
  Return swap(Swap? swap) => this(swap: swap);

  @override
  Return orderId(String? orderId) => this(orderId: orderId);

  @override
  Return order(Order? order) => this(order: order);

  @override
  Return claimOrderId(String? claimOrderId) => this(claimOrderId: claimOrderId);

  @override
  Return claimOrder(ClaimOrder? claimOrder) => this(claimOrder: claimOrder);

  @override
  Return shippingMethod(List<ShippingMethod>? shippingMethod) =>
      this(shippingMethod: shippingMethod);

  @override
  Return shippingData(Map<String, dynamic>? shippingData) =>
      this(shippingData: shippingData);

  @override
  Return refundAmount(int? refundAmount) => this(refundAmount: refundAmount);

  @override
  Return noNotification(bool? noNotification) =>
      this(noNotification: noNotification);

  @override
  Return idempotencyKey(String? idempotencyKey) =>
      this(idempotencyKey: idempotencyKey);

  @override
  Return receivedAt(DateTime? receivedAt) => this(receivedAt: receivedAt);

  @override
  Return createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Return updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  Return metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Return(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Return(...).copyWith(id: 12, name: "My name")
  /// ````
  Return call({
    Object? id = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? swapId = const $CopyWithPlaceholder(),
    Object? locationId = const $CopyWithPlaceholder(),
    Object? swap = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? claimOrderId = const $CopyWithPlaceholder(),
    Object? claimOrder = const $CopyWithPlaceholder(),
    Object? shippingMethod = const $CopyWithPlaceholder(),
    Object? shippingData = const $CopyWithPlaceholder(),
    Object? refundAmount = const $CopyWithPlaceholder(),
    Object? noNotification = const $CopyWithPlaceholder(),
    Object? idempotencyKey = const $CopyWithPlaceholder(),
    Object? receivedAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return Return(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ReturnStatus,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ReturnItem>?,
      swapId: swapId == const $CopyWithPlaceholder()
          ? _value.swapId
          // ignore: cast_nullable_to_non_nullable
          : swapId as String?,
      locationId: locationId == const $CopyWithPlaceholder()
          ? _value.locationId
          // ignore: cast_nullable_to_non_nullable
          : locationId as String?,
      swap: swap == const $CopyWithPlaceholder()
          ? _value.swap
          // ignore: cast_nullable_to_non_nullable
          : swap as Swap?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as Order?,
      claimOrderId: claimOrderId == const $CopyWithPlaceholder()
          ? _value.claimOrderId
          // ignore: cast_nullable_to_non_nullable
          : claimOrderId as String?,
      claimOrder: claimOrder == const $CopyWithPlaceholder()
          ? _value.claimOrder
          // ignore: cast_nullable_to_non_nullable
          : claimOrder as ClaimOrder?,
      shippingMethod: shippingMethod == const $CopyWithPlaceholder()
          ? _value.shippingMethod
          // ignore: cast_nullable_to_non_nullable
          : shippingMethod as List<ShippingMethod>?,
      shippingData: shippingData == const $CopyWithPlaceholder()
          ? _value.shippingData
          // ignore: cast_nullable_to_non_nullable
          : shippingData as Map<String, dynamic>?,
      refundAmount: refundAmount == const $CopyWithPlaceholder()
          ? _value.refundAmount
          // ignore: cast_nullable_to_non_nullable
          : refundAmount as int?,
      noNotification: noNotification == const $CopyWithPlaceholder()
          ? _value.noNotification
          // ignore: cast_nullable_to_non_nullable
          : noNotification as bool?,
      idempotencyKey: idempotencyKey == const $CopyWithPlaceholder()
          ? _value.idempotencyKey
          // ignore: cast_nullable_to_non_nullable
          : idempotencyKey as String?,
      receivedAt: receivedAt == const $CopyWithPlaceholder()
          ? _value.receivedAt
          // ignore: cast_nullable_to_non_nullable
          : receivedAt as DateTime?,
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

extension $ReturnCopyWith on Return {
  /// Returns a callable class that can be used as follows: `instanceOfReturn.copyWith(...)` or like so:`instanceOfReturn.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReturnCWProxy get copyWith => _$ReturnCWProxyImpl(this);
}
