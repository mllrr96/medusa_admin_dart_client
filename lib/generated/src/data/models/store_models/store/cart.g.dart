// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/cart.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CartCWProxy {
  Cart id(String? id);

  Cart email(String? email);

  Cart billingAddressId(String? billingAddressId);

  Cart billingAddress(Address? billingAddress);

  Cart shippingAddressId(String? shippingAddressId);

  Cart shippingAddress(Address? shippingAddress);

  Cart items(List<LineItem>? items);

  Cart regionId(String? regionId);

  Cart region(Region? region);

  Cart discounts(List<Discount>? discounts);

  Cart giftCards(List<GiftCard>? giftCards);

  Cart customerId(String? customerId);

  Cart customer(Customer? customer);

  Cart paymentSession(PaymentSession? paymentSession);

  Cart paymentSessions(List<PaymentSession>? paymentSessions);

  Cart paymentId(String? paymentId);

  Cart payment(Payment? payment);

  Cart shippingMethods(List<ShippingMethod>? shippingMethods);

  Cart completedAt(DateTime? completedAt);

  Cart paymentAuthorizedAt(DateTime? paymentAuthorizedAt);

  Cart idempotencyKey(String? idempotencyKey);

  Cart context(Map<String, dynamic>? context);

  Cart salesChannelId(String? salesChannelId);

  Cart salesChannel(SalesChannel? salesChannel);

  Cart shippingTotal(int? shippingTotal);

  Cart discountTotal(int? discountTotal);

  Cart taxTotal(int? taxTotal);

  Cart refundedTotal(int? refundedTotal);

  Cart total(int? total);

  Cart subTotal(int? subTotal);

  Cart refundableAmount(int? refundableAmount);

  Cart giftCardTotal(int? giftCardTotal);

  Cart giftCardTaxTotal(int? giftCardTaxTotal);

  Cart createdAt(DateTime? createdAt);

  Cart updatedAt(DateTime? updatedAt);

  Cart deletedAt(DateTime? deletedAt);

  Cart metadata(Map<String, dynamic>? metadata);

  Cart type(CartType type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Cart(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Cart(...).copyWith(id: 12, name: "My name")
  /// ````
  Cart call({
    String? id,
    String? email,
    String? billingAddressId,
    Address? billingAddress,
    String? shippingAddressId,
    Address? shippingAddress,
    List<LineItem>? items,
    String? regionId,
    Region? region,
    List<Discount>? discounts,
    List<GiftCard>? giftCards,
    String? customerId,
    Customer? customer,
    PaymentSession? paymentSession,
    List<PaymentSession>? paymentSessions,
    String? paymentId,
    Payment? payment,
    List<ShippingMethod>? shippingMethods,
    DateTime? completedAt,
    DateTime? paymentAuthorizedAt,
    String? idempotencyKey,
    Map<String, dynamic>? context,
    String? salesChannelId,
    SalesChannel? salesChannel,
    int? shippingTotal,
    int? discountTotal,
    int? taxTotal,
    int? refundedTotal,
    int? total,
    int? subTotal,
    int? refundableAmount,
    int? giftCardTotal,
    int? giftCardTaxTotal,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
    CartType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCart.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCart.copyWith.fieldName(...)`
class _$CartCWProxyImpl implements _$CartCWProxy {
  const _$CartCWProxyImpl(this._value);

  final Cart _value;

  @override
  Cart id(String? id) => this(id: id);

  @override
  Cart email(String? email) => this(email: email);

  @override
  Cart billingAddressId(String? billingAddressId) =>
      this(billingAddressId: billingAddressId);

  @override
  Cart billingAddress(Address? billingAddress) =>
      this(billingAddress: billingAddress);

  @override
  Cart shippingAddressId(String? shippingAddressId) =>
      this(shippingAddressId: shippingAddressId);

  @override
  Cart shippingAddress(Address? shippingAddress) =>
      this(shippingAddress: shippingAddress);

  @override
  Cart items(List<LineItem>? items) => this(items: items);

  @override
  Cart regionId(String? regionId) => this(regionId: regionId);

  @override
  Cart region(Region? region) => this(region: region);

  @override
  Cart discounts(List<Discount>? discounts) => this(discounts: discounts);

  @override
  Cart giftCards(List<GiftCard>? giftCards) => this(giftCards: giftCards);

  @override
  Cart customerId(String? customerId) => this(customerId: customerId);

  @override
  Cart customer(Customer? customer) => this(customer: customer);

  @override
  Cart paymentSession(PaymentSession? paymentSession) =>
      this(paymentSession: paymentSession);

  @override
  Cart paymentSessions(List<PaymentSession>? paymentSessions) =>
      this(paymentSessions: paymentSessions);

  @override
  Cart paymentId(String? paymentId) => this(paymentId: paymentId);

  @override
  Cart payment(Payment? payment) => this(payment: payment);

  @override
  Cart shippingMethods(List<ShippingMethod>? shippingMethods) =>
      this(shippingMethods: shippingMethods);

  @override
  Cart completedAt(DateTime? completedAt) => this(completedAt: completedAt);

  @override
  Cart paymentAuthorizedAt(DateTime? paymentAuthorizedAt) =>
      this(paymentAuthorizedAt: paymentAuthorizedAt);

  @override
  Cart idempotencyKey(String? idempotencyKey) =>
      this(idempotencyKey: idempotencyKey);

  @override
  Cart context(Map<String, dynamic>? context) => this(context: context);

  @override
  Cart salesChannelId(String? salesChannelId) =>
      this(salesChannelId: salesChannelId);

  @override
  Cart salesChannel(SalesChannel? salesChannel) =>
      this(salesChannel: salesChannel);

  @override
  Cart shippingTotal(int? shippingTotal) => this(shippingTotal: shippingTotal);

  @override
  Cart discountTotal(int? discountTotal) => this(discountTotal: discountTotal);

  @override
  Cart taxTotal(int? taxTotal) => this(taxTotal: taxTotal);

  @override
  Cart refundedTotal(int? refundedTotal) => this(refundedTotal: refundedTotal);

  @override
  Cart total(int? total) => this(total: total);

  @override
  Cart subTotal(int? subTotal) => this(subTotal: subTotal);

  @override
  Cart refundableAmount(int? refundableAmount) =>
      this(refundableAmount: refundableAmount);

  @override
  Cart giftCardTotal(int? giftCardTotal) => this(giftCardTotal: giftCardTotal);

  @override
  Cart giftCardTaxTotal(int? giftCardTaxTotal) =>
      this(giftCardTaxTotal: giftCardTaxTotal);

  @override
  Cart createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Cart updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  Cart deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  Cart metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override
  Cart type(CartType type) => this(type: type);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Cart(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Cart(...).copyWith(id: 12, name: "My name")
  /// ````
  Cart call({
    Object? id = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? billingAddressId = const $CopyWithPlaceholder(),
    Object? billingAddress = const $CopyWithPlaceholder(),
    Object? shippingAddressId = const $CopyWithPlaceholder(),
    Object? shippingAddress = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? regionId = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
    Object? discounts = const $CopyWithPlaceholder(),
    Object? giftCards = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? customer = const $CopyWithPlaceholder(),
    Object? paymentSession = const $CopyWithPlaceholder(),
    Object? paymentSessions = const $CopyWithPlaceholder(),
    Object? paymentId = const $CopyWithPlaceholder(),
    Object? payment = const $CopyWithPlaceholder(),
    Object? shippingMethods = const $CopyWithPlaceholder(),
    Object? completedAt = const $CopyWithPlaceholder(),
    Object? paymentAuthorizedAt = const $CopyWithPlaceholder(),
    Object? idempotencyKey = const $CopyWithPlaceholder(),
    Object? context = const $CopyWithPlaceholder(),
    Object? salesChannelId = const $CopyWithPlaceholder(),
    Object? salesChannel = const $CopyWithPlaceholder(),
    Object? shippingTotal = const $CopyWithPlaceholder(),
    Object? discountTotal = const $CopyWithPlaceholder(),
    Object? taxTotal = const $CopyWithPlaceholder(),
    Object? refundedTotal = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? subTotal = const $CopyWithPlaceholder(),
    Object? refundableAmount = const $CopyWithPlaceholder(),
    Object? giftCardTotal = const $CopyWithPlaceholder(),
    Object? giftCardTaxTotal = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return Cart(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
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
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<LineItem>?,
      regionId: regionId == const $CopyWithPlaceholder()
          ? _value.regionId
          // ignore: cast_nullable_to_non_nullable
          : regionId as String?,
      region: region == const $CopyWithPlaceholder()
          ? _value.region
          // ignore: cast_nullable_to_non_nullable
          : region as Region?,
      discounts: discounts == const $CopyWithPlaceholder()
          ? _value.discounts
          // ignore: cast_nullable_to_non_nullable
          : discounts as List<Discount>?,
      giftCards: giftCards == const $CopyWithPlaceholder()
          ? _value.giftCards
          // ignore: cast_nullable_to_non_nullable
          : giftCards as List<GiftCard>?,
      customerId: customerId == const $CopyWithPlaceholder()
          ? _value.customerId
          // ignore: cast_nullable_to_non_nullable
          : customerId as String?,
      customer: customer == const $CopyWithPlaceholder()
          ? _value.customer
          // ignore: cast_nullable_to_non_nullable
          : customer as Customer?,
      paymentSession: paymentSession == const $CopyWithPlaceholder()
          ? _value.paymentSession
          // ignore: cast_nullable_to_non_nullable
          : paymentSession as PaymentSession?,
      paymentSessions: paymentSessions == const $CopyWithPlaceholder()
          ? _value.paymentSessions
          // ignore: cast_nullable_to_non_nullable
          : paymentSessions as List<PaymentSession>?,
      paymentId: paymentId == const $CopyWithPlaceholder()
          ? _value.paymentId
          // ignore: cast_nullable_to_non_nullable
          : paymentId as String?,
      payment: payment == const $CopyWithPlaceholder()
          ? _value.payment
          // ignore: cast_nullable_to_non_nullable
          : payment as Payment?,
      shippingMethods: shippingMethods == const $CopyWithPlaceholder()
          ? _value.shippingMethods
          // ignore: cast_nullable_to_non_nullable
          : shippingMethods as List<ShippingMethod>?,
      completedAt: completedAt == const $CopyWithPlaceholder()
          ? _value.completedAt
          // ignore: cast_nullable_to_non_nullable
          : completedAt as DateTime?,
      paymentAuthorizedAt: paymentAuthorizedAt == const $CopyWithPlaceholder()
          ? _value.paymentAuthorizedAt
          // ignore: cast_nullable_to_non_nullable
          : paymentAuthorizedAt as DateTime?,
      idempotencyKey: idempotencyKey == const $CopyWithPlaceholder()
          ? _value.idempotencyKey
          // ignore: cast_nullable_to_non_nullable
          : idempotencyKey as String?,
      context: context == const $CopyWithPlaceholder()
          ? _value.context
          // ignore: cast_nullable_to_non_nullable
          : context as Map<String, dynamic>?,
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
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as CartType,
    );
  }
}

extension $CartCopyWith on Cart {
  /// Returns a callable class that can be used as follows: `instanceOfCart.copyWith(...)` or like so:`instanceOfCart.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CartCWProxy get copyWith => _$CartCWProxyImpl(this);
}
