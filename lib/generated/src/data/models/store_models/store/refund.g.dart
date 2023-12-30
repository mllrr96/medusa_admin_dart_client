// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/refund.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RefundCWProxy {
  Refund id(String? id);

  Refund orderId(String? orderId);

  Refund amount(int? amount);

  Refund note(String? note);

  Refund reason(RefundReason? reason);

  Refund idempotencyKey(String? idempotencyKey);

  Refund createdAt(DateTime? createdAt);

  Refund updatedAt(DateTime? updatedAt);

  Refund metadata(Map<String, dynamic>? metadata);

  Refund paymentId(String? paymentId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Refund(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Refund(...).copyWith(id: 12, name: "My name")
  /// ````
  Refund call({
    String? id,
    String? orderId,
    int? amount,
    String? note,
    RefundReason? reason,
    String? idempotencyKey,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
    String? paymentId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRefund.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRefund.copyWith.fieldName(...)`
class _$RefundCWProxyImpl implements _$RefundCWProxy {
  const _$RefundCWProxyImpl(this._value);

  final Refund _value;

  @override
  Refund id(String? id) => this(id: id);

  @override
  Refund orderId(String? orderId) => this(orderId: orderId);

  @override
  Refund amount(int? amount) => this(amount: amount);

  @override
  Refund note(String? note) => this(note: note);

  @override
  Refund reason(RefundReason? reason) => this(reason: reason);

  @override
  Refund idempotencyKey(String? idempotencyKey) =>
      this(idempotencyKey: idempotencyKey);

  @override
  Refund createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Refund updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  Refund metadata(Map<String, dynamic>? metadata) => this(metadata: metadata);

  @override
  Refund paymentId(String? paymentId) => this(paymentId: paymentId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Refund(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Refund(...).copyWith(id: 12, name: "My name")
  /// ````
  Refund call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? idempotencyKey = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
    Object? paymentId = const $CopyWithPlaceholder(),
  }) {
    return Refund(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as RefundReason?,
      idempotencyKey: idempotencyKey == const $CopyWithPlaceholder()
          ? _value.idempotencyKey
          // ignore: cast_nullable_to_non_nullable
          : idempotencyKey as String?,
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
      paymentId: paymentId == const $CopyWithPlaceholder()
          ? _value.paymentId
          // ignore: cast_nullable_to_non_nullable
          : paymentId as String?,
    );
  }
}

extension $RefundCopyWith on Refund {
  /// Returns a callable class that can be used as follows: `instanceOfRefund.copyWith(...)` or like so:`instanceOfRefund.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RefundCWProxy get copyWith => _$RefundCWProxyImpl(this);
}
