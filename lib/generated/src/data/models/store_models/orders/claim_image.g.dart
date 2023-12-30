// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/orders/claim_image.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClaimImageCWProxy {
  ClaimImage id(String? id);

  ClaimImage claimItemId(String? claimItemId);

  ClaimImage claimItem(ClaimItem? claimItem);

  ClaimImage url(String? url);

  ClaimImage createdAt(DateTime? createdAt);

  ClaimImage updatedAt(DateTime? updatedAt);

  ClaimImage deletedAt(DateTime? deletedAt);

  ClaimImage metadata(DateTime? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClaimImage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClaimImage(...).copyWith(id: 12, name: "My name")
  /// ````
  ClaimImage call({
    String? id,
    String? claimItemId,
    ClaimItem? claimItem,
    String? url,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    DateTime? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClaimImage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClaimImage.copyWith.fieldName(...)`
class _$ClaimImageCWProxyImpl implements _$ClaimImageCWProxy {
  const _$ClaimImageCWProxyImpl(this._value);

  final ClaimImage _value;

  @override
  ClaimImage id(String? id) => this(id: id);

  @override
  ClaimImage claimItemId(String? claimItemId) => this(claimItemId: claimItemId);

  @override
  ClaimImage claimItem(ClaimItem? claimItem) => this(claimItem: claimItem);

  @override
  ClaimImage url(String? url) => this(url: url);

  @override
  ClaimImage createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  ClaimImage updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  ClaimImage deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override
  ClaimImage metadata(DateTime? metadata) => this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClaimImage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClaimImage(...).copyWith(id: 12, name: "My name")
  /// ````
  ClaimImage call({
    Object? id = const $CopyWithPlaceholder(),
    Object? claimItemId = const $CopyWithPlaceholder(),
    Object? claimItem = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ClaimImage(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      claimItemId: claimItemId == const $CopyWithPlaceholder()
          ? _value.claimItemId
          // ignore: cast_nullable_to_non_nullable
          : claimItemId as String?,
      claimItem: claimItem == const $CopyWithPlaceholder()
          ? _value.claimItem
          // ignore: cast_nullable_to_non_nullable
          : claimItem as ClaimItem?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
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
          : metadata as DateTime?,
    );
  }
}

extension $ClaimImageCopyWith on ClaimImage {
  /// Returns a callable class that can be used as follows: `instanceOfClaimImage.copyWith(...)` or like so:`instanceOfClaimImage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClaimImageCWProxy get copyWith => _$ClaimImageCWProxyImpl(this);
}
