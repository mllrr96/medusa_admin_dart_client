// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/orders/claim_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClaimItemCWProxy {
  ClaimItem id(String? id);

  ClaimItem images(List<ClaimImage>? images);

  ClaimItem claimOrder(ClaimOrder? claimOrder);

  ClaimItem itemId(String? itemId);

  ClaimItem item(LineItem? item);

  ClaimItem variantId(String? variantId);

  ClaimItem reason(ClaimReason? reason);

  ClaimItem variant(ProductVariant? variant);

  ClaimItem note(String? note);

  ClaimItem quantity(int? quantity);

  ClaimItem tags(List<ClaimTag>? tags);

  ClaimItem metadata(Map<String, dynamic>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClaimItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClaimItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ClaimItem call({
    String? id,
    List<ClaimImage>? images,
    ClaimOrder? claimOrder,
    String? itemId,
    LineItem? item,
    String? variantId,
    ClaimReason? reason,
    ProductVariant? variant,
    String? note,
    int? quantity,
    List<ClaimTag>? tags,
    Map<String, dynamic>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClaimItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClaimItem.copyWith.fieldName(...)`
class _$ClaimItemCWProxyImpl implements _$ClaimItemCWProxy {
  const _$ClaimItemCWProxyImpl(this._value);

  final ClaimItem _value;

  @override
  ClaimItem id(String? id) => this(id: id);

  @override
  ClaimItem images(List<ClaimImage>? images) => this(images: images);

  @override
  ClaimItem claimOrder(ClaimOrder? claimOrder) => this(claimOrder: claimOrder);

  @override
  ClaimItem itemId(String? itemId) => this(itemId: itemId);

  @override
  ClaimItem item(LineItem? item) => this(item: item);

  @override
  ClaimItem variantId(String? variantId) => this(variantId: variantId);

  @override
  ClaimItem reason(ClaimReason? reason) => this(reason: reason);

  @override
  ClaimItem variant(ProductVariant? variant) => this(variant: variant);

  @override
  ClaimItem note(String? note) => this(note: note);

  @override
  ClaimItem quantity(int? quantity) => this(quantity: quantity);

  @override
  ClaimItem tags(List<ClaimTag>? tags) => this(tags: tags);

  @override
  ClaimItem metadata(Map<String, dynamic>? metadata) =>
      this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClaimItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClaimItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ClaimItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? images = const $CopyWithPlaceholder(),
    Object? claimOrder = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? item = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? variant = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ClaimItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      images: images == const $CopyWithPlaceholder()
          ? _value.images
          // ignore: cast_nullable_to_non_nullable
          : images as List<ClaimImage>?,
      claimOrder: claimOrder == const $CopyWithPlaceholder()
          ? _value.claimOrder
          // ignore: cast_nullable_to_non_nullable
          : claimOrder as ClaimOrder?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      item: item == const $CopyWithPlaceholder()
          ? _value.item
          // ignore: cast_nullable_to_non_nullable
          : item as LineItem?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as ClaimReason?,
      variant: variant == const $CopyWithPlaceholder()
          ? _value.variant
          // ignore: cast_nullable_to_non_nullable
          : variant as ProductVariant?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<ClaimTag>?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, dynamic>?,
    );
  }
}

extension $ClaimItemCopyWith on ClaimItem {
  /// Returns a callable class that can be used as follows: `instanceOfClaimItem.copyWith(...)` or like so:`instanceOfClaimItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClaimItemCWProxy get copyWith => _$ClaimItemCWProxyImpl(this);
}
