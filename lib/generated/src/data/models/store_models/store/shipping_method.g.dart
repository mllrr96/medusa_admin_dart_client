// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/shipping_method.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ShippingMethodCWProxy {
  ShippingMethod id(String? id);

  ShippingMethod shippingOptionId(String? shippingOptionId);

  ShippingMethod shippingOption(ShippingOption? shippingOption);

  ShippingMethod orderId(String? orderId);

  ShippingMethod subTotal(int? subTotal);

  ShippingMethod total(int? total);

  ShippingMethod taxTotal(int? taxTotal);

  ShippingMethod order(Order? order);

  ShippingMethod returnId(String? returnId);

  ShippingMethod returnOrder(Return? returnOrder);

  ShippingMethod swapId(String? swapId);

  ShippingMethod swap(Swap? swap);

  ShippingMethod cartId(String? cartId);

  ShippingMethod cart(Cart? cart);

  ShippingMethod claimOrderId(String? claimOrderId);

  ShippingMethod claimOrder(ClaimOrder? claimOrder);

  ShippingMethod taxLines(List<ShippingMethodTaxLine>? taxLines);

  ShippingMethod price(int? price);

  ShippingMethod data(Map<String, dynamic>? data);

  ShippingMethod includesTax(bool? includesTax);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShippingMethod(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShippingMethod(...).copyWith(id: 12, name: "My name")
  /// ````
  ShippingMethod call({
    String? id,
    String? shippingOptionId,
    ShippingOption? shippingOption,
    String? orderId,
    int? subTotal,
    int? total,
    int? taxTotal,
    Order? order,
    String? returnId,
    Return? returnOrder,
    String? swapId,
    Swap? swap,
    String? cartId,
    Cart? cart,
    String? claimOrderId,
    ClaimOrder? claimOrder,
    List<ShippingMethodTaxLine>? taxLines,
    int? price,
    Map<String, dynamic>? data,
    bool? includesTax,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfShippingMethod.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfShippingMethod.copyWith.fieldName(...)`
class _$ShippingMethodCWProxyImpl implements _$ShippingMethodCWProxy {
  const _$ShippingMethodCWProxyImpl(this._value);

  final ShippingMethod _value;

  @override
  ShippingMethod id(String? id) => this(id: id);

  @override
  ShippingMethod shippingOptionId(String? shippingOptionId) =>
      this(shippingOptionId: shippingOptionId);

  @override
  ShippingMethod shippingOption(ShippingOption? shippingOption) =>
      this(shippingOption: shippingOption);

  @override
  ShippingMethod orderId(String? orderId) => this(orderId: orderId);

  @override
  ShippingMethod subTotal(int? subTotal) => this(subTotal: subTotal);

  @override
  ShippingMethod total(int? total) => this(total: total);

  @override
  ShippingMethod taxTotal(int? taxTotal) => this(taxTotal: taxTotal);

  @override
  ShippingMethod order(Order? order) => this(order: order);

  @override
  ShippingMethod returnId(String? returnId) => this(returnId: returnId);

  @override
  ShippingMethod returnOrder(Return? returnOrder) =>
      this(returnOrder: returnOrder);

  @override
  ShippingMethod swapId(String? swapId) => this(swapId: swapId);

  @override
  ShippingMethod swap(Swap? swap) => this(swap: swap);

  @override
  ShippingMethod cartId(String? cartId) => this(cartId: cartId);

  @override
  ShippingMethod cart(Cart? cart) => this(cart: cart);

  @override
  ShippingMethod claimOrderId(String? claimOrderId) =>
      this(claimOrderId: claimOrderId);

  @override
  ShippingMethod claimOrder(ClaimOrder? claimOrder) =>
      this(claimOrder: claimOrder);

  @override
  ShippingMethod taxLines(List<ShippingMethodTaxLine>? taxLines) =>
      this(taxLines: taxLines);

  @override
  ShippingMethod price(int? price) => this(price: price);

  @override
  ShippingMethod data(Map<String, dynamic>? data) => this(data: data);

  @override
  ShippingMethod includesTax(bool? includesTax) =>
      this(includesTax: includesTax);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShippingMethod(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShippingMethod(...).copyWith(id: 12, name: "My name")
  /// ````
  ShippingMethod call({
    Object? id = const $CopyWithPlaceholder(),
    Object? shippingOptionId = const $CopyWithPlaceholder(),
    Object? shippingOption = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? subTotal = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? taxTotal = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? returnId = const $CopyWithPlaceholder(),
    Object? returnOrder = const $CopyWithPlaceholder(),
    Object? swapId = const $CopyWithPlaceholder(),
    Object? swap = const $CopyWithPlaceholder(),
    Object? cartId = const $CopyWithPlaceholder(),
    Object? cart = const $CopyWithPlaceholder(),
    Object? claimOrderId = const $CopyWithPlaceholder(),
    Object? claimOrder = const $CopyWithPlaceholder(),
    Object? taxLines = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? includesTax = const $CopyWithPlaceholder(),
  }) {
    return ShippingMethod(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      shippingOptionId: shippingOptionId == const $CopyWithPlaceholder()
          ? _value.shippingOptionId
          // ignore: cast_nullable_to_non_nullable
          : shippingOptionId as String?,
      shippingOption: shippingOption == const $CopyWithPlaceholder()
          ? _value.shippingOption
          // ignore: cast_nullable_to_non_nullable
          : shippingOption as ShippingOption?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      subTotal: subTotal == const $CopyWithPlaceholder()
          ? _value.subTotal
          // ignore: cast_nullable_to_non_nullable
          : subTotal as int?,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int?,
      taxTotal: taxTotal == const $CopyWithPlaceholder()
          ? _value.taxTotal
          // ignore: cast_nullable_to_non_nullable
          : taxTotal as int?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as Order?,
      returnId: returnId == const $CopyWithPlaceholder()
          ? _value.returnId
          // ignore: cast_nullable_to_non_nullable
          : returnId as String?,
      returnOrder: returnOrder == const $CopyWithPlaceholder()
          ? _value.returnOrder
          // ignore: cast_nullable_to_non_nullable
          : returnOrder as Return?,
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
      claimOrderId: claimOrderId == const $CopyWithPlaceholder()
          ? _value.claimOrderId
          // ignore: cast_nullable_to_non_nullable
          : claimOrderId as String?,
      claimOrder: claimOrder == const $CopyWithPlaceholder()
          ? _value.claimOrder
          // ignore: cast_nullable_to_non_nullable
          : claimOrder as ClaimOrder?,
      taxLines: taxLines == const $CopyWithPlaceholder()
          ? _value.taxLines
          // ignore: cast_nullable_to_non_nullable
          : taxLines as List<ShippingMethodTaxLine>?,
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as int?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Map<String, dynamic>?,
      includesTax: includesTax == const $CopyWithPlaceholder()
          ? _value.includesTax
          // ignore: cast_nullable_to_non_nullable
          : includesTax as bool?,
    );
  }
}

extension $ShippingMethodCopyWith on ShippingMethod {
  /// Returns a callable class that can be used as follows: `instanceOfShippingMethod.copyWith(...)` or like so:`instanceOfShippingMethod.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ShippingMethodCWProxy get copyWith => _$ShippingMethodCWProxyImpl(this);
}
