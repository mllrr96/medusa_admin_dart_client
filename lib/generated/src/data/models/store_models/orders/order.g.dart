// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/orders/order.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderCWProxy {
  Order id(String? id);

  Order status(OrderStatus status);

  Order fulfillmentStatus(FulfillmentStatus fulfillmentStatus);

  Order paymentStatus(PaymentStatus paymentStatus);

  Order displayId(int? displayId);

  Order cartId(String? cartId);

  Order cart(Cart? cart);

  Order customerId(String? customerId);

  Order customer(Customer? customer);

  Order email(String? email);

  Order billingAddressId(String? billingAddressId);

  Order billingAddress(Address? billingAddress);

  Order shippingAddressId(String? shippingAddressId);

  Order shippingAddress(Address? shippingAddress);

  Order regionId(String? regionId);

  Order region(Region? region);

  Order currencyCode(String? currencyCode);

  Order currency(Currency? currency);

  Order taxRate(num? taxRate);

  Order discounts(List<Discount>? discounts);

  Order giftCards(List<GiftCard>? giftCards);

  Order shippingMethods(List<ShippingMethod>? shippingMethods);

  Order payments(List<Payment>? payments);

  Order fulfillments(List<Fulfillment>? fulfillments);

  Order returns(List<Return>? returns);

  Order claims(List<ClaimOrder>? claims);

  Order refunds(List<Refund>? refunds);

  Order swaps(List<Swap>? swaps);

  Order draftOrderId(String? draftOrderId);

  Order draftOrder(DraftOrder? draftOrder);

  Order items(List<LineItem>? items);

  Order giftCardTransactions(List<GiftCardTransaction>? giftCardTransactions);

  Order canceledAt(DateTime? canceledAt);

  Order noNotification(bool? noNotification);

  Order idempotencyKey(String? idempotencyKey);

  Order externalId(String? externalId);

  Order salesChannelId(String? salesChannelId);

  Order salesChannel(SalesChannel? salesChannel);

  Order shippingTotal(int? shippingTotal);

  Order discountTotal(int? discountTotal);

  Order taxTotal(int? taxTotal);

  Order refundedTotal(int? refundedTotal);

  Order total(int? total);

  Order subTotal(int? subTotal);

  Order paidTotal(int? paidTotal);

  Order refundableAmount(int? refundableAmount);

  Order giftCardTotal(int? giftCardTotal);

  Order giftCardTaxTotal(int? giftCardTaxTotal);

  Order returnableItems(List<LineItem>? returnableItems);

  Order rawDiscountTotal(int? rawDiscountTotal);

  Order createdAt(DateTime? createdAt);

  Order updatedAt(DateTime? updatedAt);

  Order metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Order(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Order(...).copyWith(id: 12, name: "My name")
  /// ````
  Order call({
    String? id,
    OrderStatus? status,
    FulfillmentStatus? fulfillmentStatus,
    PaymentStatus? paymentStatus,
    int? displayId,
    String? cartId,
    Cart? cart,
    String? customerId,
    Customer? customer,
    String? email,
    String? billingAddressId,
    Address? billingAddress,
    String? shippingAddressId,
    Address? shippingAddress,
    String? regionId,
    Region? region,
    String? currencyCode,
    Currency? currency,
    num? taxRate,
    List<Discount>? discounts,
    List<GiftCard>? giftCards,
    List<ShippingMethod>? shippingMethods,
    List<Payment>? payments,
    List<Fulfillment>? fulfillments,
    List<Return>? returns,
    List<ClaimOrder>? claims,
    List<Refund>? refunds,
    List<Swap>? swaps,
    String? draftOrderId,
    DraftOrder? draftOrder,
    List<LineItem>? items,
    List<GiftCardTransaction>? giftCardTransactions,
    DateTime? canceledAt,
    bool? noNotification,
    String? idempotencyKey,
    String? externalId,
    String? salesChannelId,
    SalesChannel? salesChannel,
    int? shippingTotal,
    int? discountTotal,
    int? taxTotal,
    int? refundedTotal,
    int? total,
    int? subTotal,
    int? paidTotal,
    int? refundableAmount,
    int? giftCardTotal,
    int? giftCardTaxTotal,
    List<LineItem>? returnableItems,
    int? rawDiscountTotal,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrder.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrder.copyWith.fieldName(...)`
class _$OrderCWProxyImpl implements _$OrderCWProxy {
  const _$OrderCWProxyImpl(this._value);

  final Order _value;

  @override
  Order id(String? id) => this(id: id);

  @override
  Order status(OrderStatus status) => this(status: status);

  @override
  Order fulfillmentStatus(FulfillmentStatus fulfillmentStatus) =>
      this(fulfillmentStatus: fulfillmentStatus);

  @override
  Order paymentStatus(PaymentStatus paymentStatus) =>
      this(paymentStatus: paymentStatus);

  @override
  Order displayId(int? displayId) => this(displayId: displayId);

  @override
  Order cartId(String? cartId) => this(cartId: cartId);

  @override
  Order cart(Cart? cart) => this(cart: cart);

  @override
  Order customerId(String? customerId) => this(customerId: customerId);

  @override
  Order customer(Customer? customer) => this(customer: customer);

  @override
  Order email(String? email) => this(email: email);

  @override
  Order billingAddressId(String? billingAddressId) =>
      this(billingAddressId: billingAddressId);

  @override
  Order billingAddress(Address? billingAddress) =>
      this(billingAddress: billingAddress);

  @override
  Order shippingAddressId(String? shippingAddressId) =>
      this(shippingAddressId: shippingAddressId);

  @override
  Order shippingAddress(Address? shippingAddress) =>
      this(shippingAddress: shippingAddress);

  @override
  Order regionId(String? regionId) => this(regionId: regionId);

  @override
  Order region(Region? region) => this(region: region);

  @override
  Order currencyCode(String? currencyCode) => this(currencyCode: currencyCode);

  @override
  Order currency(Currency? currency) => this(currency: currency);

  @override
  Order taxRate(num? taxRate) => this(taxRate: taxRate);

  @override
  Order discounts(List<Discount>? discounts) => this(discounts: discounts);

  @override
  Order giftCards(List<GiftCard>? giftCards) => this(giftCards: giftCards);

  @override
  Order shippingMethods(List<ShippingMethod>? shippingMethods) =>
      this(shippingMethods: shippingMethods);

  @override
  Order payments(List<Payment>? payments) => this(payments: payments);

  @override
  Order fulfillments(List<Fulfillment>? fulfillments) =>
      this(fulfillments: fulfillments);

  @override
  Order returns(List<Return>? returns) => this(returns: returns);

  @override
  Order claims(List<ClaimOrder>? claims) => this(claims: claims);

  @override
  Order refunds(List<Refund>? refunds) => this(refunds: refunds);

  @override
  Order swaps(List<Swap>? swaps) => this(swaps: swaps);

  @override
  Order draftOrderId(String? draftOrderId) => this(draftOrderId: draftOrderId);

  @override
  Order draftOrder(DraftOrder? draftOrder) => this(draftOrder: draftOrder);

  @override
  Order items(List<LineItem>? items) => this(items: items);

  @override
  Order giftCardTransactions(List<GiftCardTransaction>? giftCardTransactions) =>
      this(giftCardTransactions: giftCardTransactions);

  @override
  Order canceledAt(DateTime? canceledAt) => this(canceledAt: canceledAt);

  @override
  Order noNotification(bool? noNotification) =>
      this(noNotification: noNotification);

  @override
  Order idempotencyKey(String? idempotencyKey) =>
      this(idempotencyKey: idempotencyKey);

  @override
  Order externalId(String? externalId) => this(externalId: externalId);

  @override
  Order salesChannelId(String? salesChannelId) =>
      this(salesChannelId: salesChannelId);

  @override
  Order salesChannel(SalesChannel? salesChannel) =>
      this(salesChannel: salesChannel);

  @override
  Order shippingTotal(int? shippingTotal) => this(shippingTotal: shippingTotal);

  @override
  Order discountTotal(int? discountTotal) => this(discountTotal: discountTotal);

  @override
  Order taxTotal(int? taxTotal) => this(taxTotal: taxTotal);

  @override
  Order refundedTotal(int? refundedTotal) => this(refundedTotal: refundedTotal);

  @override
  Order total(int? total) => this(total: total);

  @override
  Order subTotal(int? subTotal) => this(subTotal: subTotal);

  @override
  Order paidTotal(int? paidTotal) => this(paidTotal: paidTotal);

  @override
  Order refundableAmount(int? refundableAmount) =>
      this(refundableAmount: refundableAmount);

  @override
  Order giftCardTotal(int? giftCardTotal) => this(giftCardTotal: giftCardTotal);

  @override
  Order giftCardTaxTotal(int? giftCardTaxTotal) =>
      this(giftCardTaxTotal: giftCardTaxTotal);

  @override
  Order returnableItems(List<LineItem>? returnableItems) =>
      this(returnableItems: returnableItems);

  @override
  Order rawDiscountTotal(int? rawDiscountTotal) =>
      this(rawDiscountTotal: rawDiscountTotal);

  @override
  Order createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Order updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  Order metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Order(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Order(...).copyWith(id: 12, name: "My name")
  /// ````
  Order call({
    Object? id = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? fulfillmentStatus = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? displayId = const $CopyWithPlaceholder(),
    Object? cartId = const $CopyWithPlaceholder(),
    Object? cart = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? customer = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? billingAddressId = const $CopyWithPlaceholder(),
    Object? billingAddress = const $CopyWithPlaceholder(),
    Object? shippingAddressId = const $CopyWithPlaceholder(),
    Object? shippingAddress = const $CopyWithPlaceholder(),
    Object? regionId = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
    Object? currencyCode = const $CopyWithPlaceholder(),
    Object? currency = const $CopyWithPlaceholder(),
    Object? taxRate = const $CopyWithPlaceholder(),
    Object? discounts = const $CopyWithPlaceholder(),
    Object? giftCards = const $CopyWithPlaceholder(),
    Object? shippingMethods = const $CopyWithPlaceholder(),
    Object? payments = const $CopyWithPlaceholder(),
    Object? fulfillments = const $CopyWithPlaceholder(),
    Object? returns = const $CopyWithPlaceholder(),
    Object? claims = const $CopyWithPlaceholder(),
    Object? refunds = const $CopyWithPlaceholder(),
    Object? swaps = const $CopyWithPlaceholder(),
    Object? draftOrderId = const $CopyWithPlaceholder(),
    Object? draftOrder = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? giftCardTransactions = const $CopyWithPlaceholder(),
    Object? canceledAt = const $CopyWithPlaceholder(),
    Object? noNotification = const $CopyWithPlaceholder(),
    Object? idempotencyKey = const $CopyWithPlaceholder(),
    Object? externalId = const $CopyWithPlaceholder(),
    Object? salesChannelId = const $CopyWithPlaceholder(),
    Object? salesChannel = const $CopyWithPlaceholder(),
    Object? shippingTotal = const $CopyWithPlaceholder(),
    Object? discountTotal = const $CopyWithPlaceholder(),
    Object? taxTotal = const $CopyWithPlaceholder(),
    Object? refundedTotal = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? subTotal = const $CopyWithPlaceholder(),
    Object? paidTotal = const $CopyWithPlaceholder(),
    Object? refundableAmount = const $CopyWithPlaceholder(),
    Object? giftCardTotal = const $CopyWithPlaceholder(),
    Object? giftCardTaxTotal = const $CopyWithPlaceholder(),
    Object? returnableItems = const $CopyWithPlaceholder(),
    Object? rawDiscountTotal = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return Order(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as OrderStatus,
      fulfillmentStatus: fulfillmentStatus == const $CopyWithPlaceholder() ||
              fulfillmentStatus == null
          ? _value.fulfillmentStatus
          // ignore: cast_nullable_to_non_nullable
          : fulfillmentStatus as FulfillmentStatus,
      paymentStatus:
          paymentStatus == const $CopyWithPlaceholder() || paymentStatus == null
              ? _value.paymentStatus
              // ignore: cast_nullable_to_non_nullable
              : paymentStatus as PaymentStatus,
      displayId: displayId == const $CopyWithPlaceholder()
          ? _value.displayId
          // ignore: cast_nullable_to_non_nullable
          : displayId as int?,
      cartId: cartId == const $CopyWithPlaceholder()
          ? _value.cartId
          // ignore: cast_nullable_to_non_nullable
          : cartId as String?,
      cart: cart == const $CopyWithPlaceholder()
          ? _value.cart
          // ignore: cast_nullable_to_non_nullable
          : cart as Cart?,
      customerId: customerId == const $CopyWithPlaceholder()
          ? _value.customerId
          // ignore: cast_nullable_to_non_nullable
          : customerId as String?,
      customer: customer == const $CopyWithPlaceholder()
          ? _value.customer
          // ignore: cast_nullable_to_non_nullable
          : customer as Customer?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      billingAddressId: billingAddressId == const $CopyWithPlaceholder()
          ? _value.billingAddressId
          // ignore: cast_nullable_to_non_nullable
          : billingAddressId as String?,
      billingAddress: billingAddress == const $CopyWithPlaceholder()
          ? _value.billingAddress
          // ignore: cast_nullable_to_non_nullable
          : billingAddress as Address?,
      shippingAddressId: shippingAddressId == const $CopyWithPlaceholder()
          ? _value.shippingAddressId
          // ignore: cast_nullable_to_non_nullable
          : shippingAddressId as String?,
      shippingAddress: shippingAddress == const $CopyWithPlaceholder()
          ? _value.shippingAddress
          // ignore: cast_nullable_to_non_nullable
          : shippingAddress as Address?,
      regionId: regionId == const $CopyWithPlaceholder()
          ? _value.regionId
          // ignore: cast_nullable_to_non_nullable
          : regionId as String?,
      region: region == const $CopyWithPlaceholder()
          ? _value.region
          // ignore: cast_nullable_to_non_nullable
          : region as Region?,
      currencyCode: currencyCode == const $CopyWithPlaceholder()
          ? _value.currencyCode
          // ignore: cast_nullable_to_non_nullable
          : currencyCode as String?,
      currency: currency == const $CopyWithPlaceholder()
          ? _value.currency
          // ignore: cast_nullable_to_non_nullable
          : currency as Currency?,
      taxRate: taxRate == const $CopyWithPlaceholder()
          ? _value.taxRate
          // ignore: cast_nullable_to_non_nullable
          : taxRate as num?,
      discounts: discounts == const $CopyWithPlaceholder()
          ? _value.discounts
          // ignore: cast_nullable_to_non_nullable
          : discounts as List<Discount>?,
      giftCards: giftCards == const $CopyWithPlaceholder()
          ? _value.giftCards
          // ignore: cast_nullable_to_non_nullable
          : giftCards as List<GiftCard>?,
      shippingMethods: shippingMethods == const $CopyWithPlaceholder()
          ? _value.shippingMethods
          // ignore: cast_nullable_to_non_nullable
          : shippingMethods as List<ShippingMethod>?,
      payments: payments == const $CopyWithPlaceholder()
          ? _value.payments
          // ignore: cast_nullable_to_non_nullable
          : payments as List<Payment>?,
      fulfillments: fulfillments == const $CopyWithPlaceholder()
          ? _value.fulfillments
          // ignore: cast_nullable_to_non_nullable
          : fulfillments as List<Fulfillment>?,
      returns: returns == const $CopyWithPlaceholder()
          ? _value.returns
          // ignore: cast_nullable_to_non_nullable
          : returns as List<Return>?,
      claims: claims == const $CopyWithPlaceholder()
          ? _value.claims
          // ignore: cast_nullable_to_non_nullable
          : claims as List<ClaimOrder>?,
      refunds: refunds == const $CopyWithPlaceholder()
          ? _value.refunds
          // ignore: cast_nullable_to_non_nullable
          : refunds as List<Refund>?,
      swaps: swaps == const $CopyWithPlaceholder()
          ? _value.swaps
          // ignore: cast_nullable_to_non_nullable
          : swaps as List<Swap>?,
      draftOrderId: draftOrderId == const $CopyWithPlaceholder()
          ? _value.draftOrderId
          // ignore: cast_nullable_to_non_nullable
          : draftOrderId as String?,
      draftOrder: draftOrder == const $CopyWithPlaceholder()
          ? _value.draftOrder
          // ignore: cast_nullable_to_non_nullable
          : draftOrder as DraftOrder?,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<LineItem>?,
      giftCardTransactions: giftCardTransactions == const $CopyWithPlaceholder()
          ? _value.giftCardTransactions
          // ignore: cast_nullable_to_non_nullable
          : giftCardTransactions as List<GiftCardTransaction>?,
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
      externalId: externalId == const $CopyWithPlaceholder()
          ? _value.externalId
          // ignore: cast_nullable_to_non_nullable
          : externalId as String?,
      salesChannelId: salesChannelId == const $CopyWithPlaceholder()
          ? _value.salesChannelId
          // ignore: cast_nullable_to_non_nullable
          : salesChannelId as String?,
      salesChannel: salesChannel == const $CopyWithPlaceholder()
          ? _value.salesChannel
          // ignore: cast_nullable_to_non_nullable
          : salesChannel as SalesChannel?,
      shippingTotal: shippingTotal == const $CopyWithPlaceholder()
          ? _value.shippingTotal
          // ignore: cast_nullable_to_non_nullable
          : shippingTotal as int?,
      discountTotal: discountTotal == const $CopyWithPlaceholder()
          ? _value.discountTotal
          // ignore: cast_nullable_to_non_nullable
          : discountTotal as int?,
      taxTotal: taxTotal == const $CopyWithPlaceholder()
          ? _value.taxTotal
          // ignore: cast_nullable_to_non_nullable
          : taxTotal as int?,
      refundedTotal: refundedTotal == const $CopyWithPlaceholder()
          ? _value.refundedTotal
          // ignore: cast_nullable_to_non_nullable
          : refundedTotal as int?,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int?,
      subTotal: subTotal == const $CopyWithPlaceholder()
          ? _value.subTotal
          // ignore: cast_nullable_to_non_nullable
          : subTotal as int?,
      paidTotal: paidTotal == const $CopyWithPlaceholder()
          ? _value.paidTotal
          // ignore: cast_nullable_to_non_nullable
          : paidTotal as int?,
      refundableAmount: refundableAmount == const $CopyWithPlaceholder()
          ? _value.refundableAmount
          // ignore: cast_nullable_to_non_nullable
          : refundableAmount as int?,
      giftCardTotal: giftCardTotal == const $CopyWithPlaceholder()
          ? _value.giftCardTotal
          // ignore: cast_nullable_to_non_nullable
          : giftCardTotal as int?,
      giftCardTaxTotal: giftCardTaxTotal == const $CopyWithPlaceholder()
          ? _value.giftCardTaxTotal
          // ignore: cast_nullable_to_non_nullable
          : giftCardTaxTotal as int?,
      returnableItems: returnableItems == const $CopyWithPlaceholder()
          ? _value.returnableItems
          // ignore: cast_nullable_to_non_nullable
          : returnableItems as List<LineItem>?,
      rawDiscountTotal: rawDiscountTotal == const $CopyWithPlaceholder()
          ? _value.rawDiscountTotal
          // ignore: cast_nullable_to_non_nullable
          : rawDiscountTotal as int?,
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

extension $OrderCopyWith on Order {
  /// Returns a callable class that can be used as follows: `instanceOfOrder.copyWith(...)` or like so:`instanceOfOrder.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderCWProxy get copyWith => _$OrderCWProxyImpl(this);
}
