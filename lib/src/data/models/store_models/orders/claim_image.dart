import 'claim_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/orders/claim_image.g.dart';

@CopyWith()
class ClaimImage {
  /// Image id
  final String? id;
  final String? claimItemId;
  final ClaimItem? claimItem;
  /// Image url
  final String? url;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final DateTime? metadata;

  ClaimImage({
    this.id,
    this.claimItemId,
    this.claimItem,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

 factory ClaimImage.fromJson(Map<String, dynamic> json) {
    return ClaimImage(
      id: json['id'],
      claimItemId: json['claim_item_id'],
      claimItem: json['claim_item'] != null
          ? ClaimItem.fromJson(json['claim_item'])
          : null,
      url: json['url'],
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? '')?.toLocal(),
      metadata: json['metadata'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['id'] = id;
    json['claim_item_id'] = claimItemId;
    json['claim_item'] = claimItem?.toJson();
    json['url'] = url;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    json['deleted_at'] = deletedAt;
    json['metadata'] = metadata;
    return json;
  }
}
