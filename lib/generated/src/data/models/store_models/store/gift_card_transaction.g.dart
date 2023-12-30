// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/gift_card_transaction.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GiftCardTransactionCWProxy {
  GiftCardTransaction id(String? id);

  GiftCardTransaction giftCardId(String? giftCardId);

  GiftCardTransaction giftCard(GiftCard? giftCard);

  GiftCardTransaction orderId(String? orderId);

  GiftCardTransaction order(Order? order);

  GiftCardTransaction amount(int? amount);

  GiftCardTransaction createdAt(DateTime? createdAt);

  GiftCardTransaction isTaxable(bool? isTaxable);

  GiftCardTransaction taxRate(num? taxRate);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GiftCardTransaction(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GiftCardTransaction(...).copyWith(id: 12, name: "My name")
  /// ````
  GiftCardTransaction call({
    String? id,
    String? giftCardId,
    GiftCard? giftCard,
    String? orderId,
    Order? order,
    int? amount,
    DateTime? createdAt,
    bool? isTaxable,
    num? taxRate,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGiftCardTransaction.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGiftCardTransaction.copyWith.fieldName(...)`
class _$GiftCardTransactionCWProxyImpl implements _$GiftCardTransactionCWProxy {
  const _$GiftCardTransactionCWProxyImpl(this._value);

  final GiftCardTransaction _value;

  @override
  GiftCardTransaction id(String? id) => this(id: id);

  @override
  GiftCardTransaction giftCardId(String? giftCardId) =>
      this(giftCardId: giftCardId);

  @override
  GiftCardTransaction giftCard(GiftCard? giftCard) => this(giftCard: giftCard);

  @override
  GiftCardTransaction orderId(String? orderId) => this(orderId: orderId);

  @override
  GiftCardTransaction order(Order? order) => this(order: order);

  @override
  GiftCardTransaction amount(int? amount) => this(amount: amount);

  @override
  GiftCardTransaction createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  GiftCardTransaction isTaxable(bool? isTaxable) => this(isTaxable: isTaxable);

  @override
  GiftCardTransaction taxRate(num? taxRate) => this(taxRate: taxRate);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GiftCardTransaction(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GiftCardTransaction(...).copyWith(id: 12, name: "My name")
  /// ````
  GiftCardTransaction call({
    Object? id = const $CopyWithPlaceholder(),
    Object? giftCardId = const $CopyWithPlaceholder(),
    Object? giftCard = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? isTaxable = const $CopyWithPlaceholder(),
    Object? taxRate = const $CopyWithPlaceholder(),
  }) {
    return GiftCardTransaction(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      giftCardId: giftCardId == const $CopyWithPlaceholder()
          ? _value.giftCardId
          // ignore: cast_nullable_to_non_nullable
          : giftCardId as String?,
      giftCard: giftCard == const $CopyWithPlaceholder()
          ? _value.giftCard
          // ignore: cast_nullable_to_non_nullable
          : giftCard as GiftCard?,
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
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      isTaxable: isTaxable == const $CopyWithPlaceholder()
          ? _value.isTaxable
          // ignore: cast_nullable_to_non_nullable
          : isTaxable as bool?,
      taxRate: taxRate == const $CopyWithPlaceholder()
          ? _value.taxRate
          // ignore: cast_nullable_to_non_nullable
          : taxRate as num?,
    );
  }
}

extension $GiftCardTransactionCopyWith on GiftCardTransaction {
  /// Returns a callable class that can be used as follows: `instanceOfGiftCardTransaction.copyWith(...)` or like so:`instanceOfGiftCardTransaction.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GiftCardTransactionCWProxy get copyWith =>
      _$GiftCardTransactionCWProxyImpl(this);
}
