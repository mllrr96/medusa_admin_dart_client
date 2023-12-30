import '../store_models/common/index.dart';

class StorePostCartReq {
  final String? regionId;
  final String? countryCode;
  final List<AdditionalItem>? items;
  final dynamic context;
  final String? salesChannelId;

  StorePostCartReq({
    this.regionId,
    this.countryCode,
    this.items,
    this.context,
    this.salesChannelId,
  });

  factory StorePostCartReq.fromJson(Map<String, dynamic> json) {
    return StorePostCartReq(
      regionId: json['region_id'],
      countryCode: json['country_code'],
      items: json['items'] != null
          ? (json['items'] as List)
              .map((i) => AdditionalItem.fromJson(i))
              .toList()
          : null,
      context: json['context'],
      salesChannelId: json['sales_channel_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['region_id'] = regionId;
    data['country_code'] = countryCode;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    if (context != null) {
      data['context'] = context!.toJson();
    }
    if (salesChannelId != null) data['sales_channel_id'] = salesChannelId;
    return data;
  }
}
