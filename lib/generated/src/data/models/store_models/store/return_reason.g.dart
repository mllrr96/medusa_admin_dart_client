// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/return_reason.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReturnReasonCWProxy {
  ReturnReason id(String? id);

  ReturnReason description(String? description);

  ReturnReason label(String? label);

  ReturnReason value(String? value);

  ReturnReason parentReturnReasonId(String? parentReturnReasonId);

  ReturnReason parentReturnReason(ReturnReason? parentReturnReason);

  ReturnReason returnReasonChildren(List<ReturnReason>? returnReasonChildren);

  ReturnReason createdAt(DateTime? createdAt);

  ReturnReason updatedAt(DateTime? updatedAt);

  ReturnReason deletedAt(DateTime? deletedAt);

  ReturnReason metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReturnReason(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReturnReason(...).copyWith(id: 12, name: "My name")
  /// ````
  ReturnReason call({
    String? id,
    String? description,
    String? label,
    String? value,
    String? parentReturnReasonId,
    ReturnReason? parentReturnReason,
    List<ReturnReason>? returnReasonChildren,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReturnReason.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReturnReason.copyWith.fieldName(...)`
class _$ReturnReasonCWProxyImpl implements _$ReturnReasonCWProxy {
  const _$ReturnReasonCWProxyImpl(this._value);

  final ReturnReason _value;

  @override
  ReturnReason id(String? id) => this(id: id);

  @override
  ReturnReason description(String? description) =>
      this(description: description);

  @override
  ReturnReason label(String? label) => this(label: label);

  @override
  ReturnReason value(String? value) => this(value: value);

  @override
  ReturnReason parentReturnReasonId(String? parentReturnReasonId) =>
      this(parentReturnReasonId: parentReturnReasonId);

  @override
  ReturnReason parentReturnReason(ReturnReason? parentReturnReason) =>
      this(parentReturnReason: parentReturnReason);

  @override
  ReturnReason returnReasonChildren(List<ReturnReason>? returnReasonChildren) =>
      this(returnReasonChildren: returnReasonChildren);

  @override
  ReturnReason createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  ReturnReason updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  ReturnReason deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  ReturnReason metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReturnReason(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReturnReason(...).copyWith(id: 12, name: "My name")
  /// ````
  ReturnReason call({
    Object? id = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? parentReturnReasonId = const $CopyWithPlaceholder(),
    Object? parentReturnReason = const $CopyWithPlaceholder(),
    Object? returnReasonChildren = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ReturnReason(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      label: label == const $CopyWithPlaceholder()
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
      parentReturnReasonId: parentReturnReasonId == const $CopyWithPlaceholder()
          ? _value.parentReturnReasonId
          // ignore: cast_nullable_to_non_nullable
          : parentReturnReasonId as String?,
      parentReturnReason: parentReturnReason == const $CopyWithPlaceholder()
          ? _value.parentReturnReason
          // ignore: cast_nullable_to_non_nullable
          : parentReturnReason as ReturnReason?,
      returnReasonChildren: returnReasonChildren == const $CopyWithPlaceholder()
          ? _value.returnReasonChildren
          // ignore: cast_nullable_to_non_nullable
          : returnReasonChildren as List<ReturnReason>?,
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
    );
  }
}

extension $ReturnReasonCopyWith on ReturnReason {
  /// Returns a callable class that can be used as follows: `instanceOfReturnReason.copyWith(...)` or like so:`instanceOfReturnReason.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReturnReasonCWProxy get copyWith => _$ReturnReasonCWProxyImpl(this);
}
