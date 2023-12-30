import '../index.dart';

class StoreOrdersRes {
  final Order? order;
  StoreOrdersRes({this.order});
  factory StoreOrdersRes.fromJson(json) {
    return StoreOrdersRes(
      order: json["order"] != null ? Order.fromJson(json["order"]) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order'] = order?.toJson();
    return data;
  }
}
