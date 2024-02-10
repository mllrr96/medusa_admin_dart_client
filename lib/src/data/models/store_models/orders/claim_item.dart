import '../../../enum/enums.dart';
import '../products/index.dart';
import '../store/index.dart';
import 'claim_image.dart';
import 'claim_order.dart';
import 'claim_tag.dart';
class ClaimItem {
  /// The id of the claim item.
  final String? id;

  /// A list of image url's that will be associated with the claim
  final List<ClaimImage>? images;
  final ClaimOrder? claimOrder;

  /// The id of the line item that will be claimed.
  final String? itemId;

  ///
  final LineItem? item;
  final String? variantId;

  /// The reason for the claim
  final ClaimReason? reason;
  final ProductVariant? variant;

  /// Short text describing the claim item in further detail.
  final String? note;

  /// The number of items that will be returned
  final int? quantity;

  /// A list o tags to add to the claim item
  final List<ClaimTag>? tags;

  /// An optional set of key-value pairs to hold additional information.
  final Map<String, dynamic>? metadata;

  const ClaimItem({
    this.id,
    this.images,
    this.claimOrder,
    this.itemId,
    this.item,
    this.variantId,
    this.reason,
    this.variant,
    this.note,
    this.quantity,
    this.tags,
    this.metadata,
  });

  factory ClaimItem.fromJson(Map<String, dynamic> json) {
    return ClaimItem(
      id: json['id'],
      images: json['images'].map((e) => ClaimImage.fromJson(e)).toList(),
      claimOrder: json['claim_order'] != null ? ClaimOrder.fromJson(json['claim_order']) : null,
      itemId: json['item_id'],
      item: json['item'] != null ? LineItem.fromJson(json['item']) : null,
      variantId: json['variant_id'],
      variant: json['variant'] != null ? ProductVariant.fromJson(json['item']) : null,
      reason: json['reason'] != null ? ClaimReason.values.firstWhere((e) => e.value == json['reason']) : null,
      note: json['note'],
      quantity: json['quantity'],
      tags: json['product_tags'].map((e) => ClaimTag.fromJson(e)).toList(),
      metadata: json['metadata'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['id'] = id;
    json['images'] = images?.map((e) => e.toJson()).toList();
    json['claim_order'] = claimOrder?.toJson();
    json['item_id'] = itemId;
    json['item'] = item?.toJson();
    json['variant_id'] = variantId;
    json['variant'] = variant?.toJson();
    json['reason'] = reason?.value;
    json['note'] = note;
    json['product_tags'] = tags?.map((e) => e.toJson()).toList();
    json['metadata'] = metadata;
    return json;
  }
}

