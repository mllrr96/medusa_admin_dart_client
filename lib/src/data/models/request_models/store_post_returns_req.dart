import '../store_models/common/index.dart';
class StorePostReturnsReq {
 final String? orderId;
  final List<ReturnItem>? items;
  final ReturnShipping? returnShipping;

  StorePostReturnsReq({this.orderId, this.items, this.returnShipping});

  factory StorePostReturnsReq.fromJson(Map<String, dynamic> json) {
    return StorePostReturnsReq(
      orderId: json['order_id'],
      items: json['items'] != null
          ? (json['items'] as List).map((i) => ReturnItem.fromJson(i)).toList()
          : null,
      returnShipping: json['return_shipping'] != null
          ? ReturnShipping.fromJson(json['return_shipping'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order_id'] = orderId;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    if (returnShipping != null) {
      data['return_shipping'] = returnShipping!.toJson();
    }
    return data;
  }
}
