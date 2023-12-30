// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/payment_collection/payment_collection.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentCollectionCWProxy {
  PaymentCollection id(String? id);

  PaymentCollection description(String? description);

  PaymentCollection amount(int? amount);

  PaymentCollection authorizedAmount(int? authorizedAmount);

  PaymentCollection regionId(String? regionId);

  PaymentCollection currencyCode(String? currencyCode);

  PaymentCollection createdBy(String? createdBy);

  PaymentCollection type(String? type);

  PaymentCollection status(PaymentCollectionStatus status);

  PaymentCollection createdAt(DateTime? createdAt);

  PaymentCollection updatedAt(DateTime? updatedAt);

  PaymentCollection deletedAt(DateTime? deletedAt);

  PaymentCollection metadata(Map<String, dynamic>? metadata);

  PaymentCollection region(Region? region);

  PaymentCollection currency(Currency? currency);

  PaymentCollection paymentSession(PaymentSession? paymentSession);

  PaymentCollection payments(List<Payment>? payments);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaymentCollection(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaymentCollection(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentCollection call({
    String? id,
    String? description,
    int? amount,
    int? authorizedAmount,
    String? regionId,
    String? currencyCode,
    String? createdBy,
    String? type,
    PaymentCollectionStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
    Region? region,
    Currency? currency,
    PaymentSession? paymentSession,
    List<Payment>? payments,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaymentCollection.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaymentCollection.copyWith.fieldName(...)`
class _$PaymentCollectionCWProxyImpl implements _$PaymentCollectionCWProxy {
  const _$PaymentCollectionCWProxyImpl(this._value);

  final PaymentCollection _value;

  @override
  PaymentCollection id(String? id) => this(id: id);

  @override
  PaymentCollection description(String? description) =>
      this(description: description);

  @override
  PaymentCollection amount(int? amount) => this(amount: amount);

  @override
  PaymentCollection authorizedAmount(int? authorizedAmount) =>
      this(authorizedAmount: authorizedAmount);

  @override
  PaymentCollection regionId(String? regionId) => this(regionId: regionId);

  @override
  PaymentCollection currencyCode(String? currencyCode) =>
      this(currencyCode: currencyCode);

  @override
  PaymentCollection createdBy(String? createdBy) => this(createdBy: createdBy);

  @override
  PaymentCollection type(String? type) => this(type: type);

  @override
  PaymentCollection status(PaymentCollectionStatus status) =>
      this(status: status);

  @override
  PaymentCollection createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  PaymentCollection updatedAt(DateTime? updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  PaymentCollection deletedAt(DateTime? deletedAt) =>
      this(deletedAt: deletedAt);

  @override
  PaymentCollection metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override
  PaymentCollection region(Region? region) => this(region: region);

  @override
  PaymentCollection currency(Currency? currency) => this(currency: currency);

  @override
  PaymentCollection paymentSession(PaymentSession? paymentSession) =>
      this(paymentSession: paymentSession);

  @override
  PaymentCollection payments(List<Payment>? payments) =>
      this(payments: payments);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaymentCollection(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaymentCollection(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentCollection call({
    Object? id = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? authorizedAmount = const $CopyWithPlaceholder(),
    Object? regionId = const $CopyWithPlaceholder(),
    Object? currencyCode = const $CopyWithPlaceholder(),
    Object? createdBy = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
    Object? currency = const $CopyWithPlaceholder(),
    Object? paymentSession = const $CopyWithPlaceholder(),
    Object? payments = const $CopyWithPlaceholder(),
  }) {
    return PaymentCollection(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int?,
      authorizedAmount: authorizedAmount == const $CopyWithPlaceholder()
          ? _value.authorizedAmount
          // ignore: cast_nullable_to_non_nullable
          : authorizedAmount as int?,
      regionId: regionId == const $CopyWithPlaceholder()
          ? _value.regionId
          // ignore: cast_nullable_to_non_nullable
          : regionId as String?,
      currencyCode: currencyCode == const $CopyWithPlaceholder()
          ? _value.currencyCode
          // ignore: cast_nullable_to_non_nullable
          : currencyCode as String?,
      createdBy: createdBy == const $CopyWithPlaceholder()
          ? _value.createdBy
          // ignore: cast_nullable_to_non_nullable
          : createdBy as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as PaymentCollectionStatus,
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
      region: region == const $CopyWithPlaceholder()
          ? _value.region
          // ignore: cast_nullable_to_non_nullable
          : region as Region?,
      currency: currency == const $CopyWithPlaceholder()
          ? _value.currency
          // ignore: cast_nullable_to_non_nullable
          : currency as Currency?,
      paymentSession: paymentSession == const $CopyWithPlaceholder()
          ? _value.paymentSession
          // ignore: cast_nullable_to_non_nullable
          : paymentSession as PaymentSession?,
      payments: payments == const $CopyWithPlaceholder()
          ? _value.payments
          // ignore: cast_nullable_to_non_nullable
          : payments as List<Payment>?,
    );
  }
}

extension $PaymentCollectionCopyWith on PaymentCollection {
  /// Returns a callable class that can be used as follows: `instanceOfPaymentCollection.copyWith(...)` or like so:`instanceOfPaymentCollection.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentCollectionCWProxy get copyWith =>
      _$PaymentCollectionCWProxyImpl(this);
}
