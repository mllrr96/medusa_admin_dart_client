// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/sales_channel.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SalesChannelCWProxy {
  SalesChannel id(String? id);

  SalesChannel name(String? name);

  SalesChannel description(String? description);

  SalesChannel isDisabled(bool? isDisabled);

  SalesChannel createdAt(DateTime? createdAt);

  SalesChannel updatedAt(DateTime? updatedAt);

  SalesChannel deletedAt(DateTime? deletedAt);

  SalesChannel metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesChannel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesChannel(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesChannel call({
    String? id,
    String? name,
    String? description,
    bool? isDisabled,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSalesChannel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSalesChannel.copyWith.fieldName(...)`
class _$SalesChannelCWProxyImpl implements _$SalesChannelCWProxy {
  const _$SalesChannelCWProxyImpl(this._value);

  final SalesChannel _value;

  @override
  SalesChannel id(String? id) => this(id: id);

  @override
  SalesChannel name(String? name) => this(name: name);

  @override
  SalesChannel description(String? description) =>
      this(description: description);

  @override
  SalesChannel isDisabled(bool? isDisabled) => this(isDisabled: isDisabled);

  @override
  SalesChannel createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  SalesChannel updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  SalesChannel deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  SalesChannel metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesChannel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesChannel(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesChannel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isDisabled = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return SalesChannel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      isDisabled: isDisabled == const $CopyWithPlaceholder()
          ? _value.isDisabled
          // ignore: cast_nullable_to_non_nullable
          : isDisabled as bool?,
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

extension $SalesChannelCopyWith on SalesChannel {
  /// Returns a callable class that can be used as follows: `instanceOfSalesChannel.copyWith(...)` or like so:`instanceOfSalesChannel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SalesChannelCWProxy get copyWith => _$SalesChannelCWProxyImpl(this);
}
