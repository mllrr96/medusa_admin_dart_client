import '../index.dart';

class StoreCartsRes {
  final Cart? cart;
  StoreCartsRes({this.cart});
  factory StoreCartsRes.fromJson(Map<String, dynamic> json) {
    return StoreCartsRes(
      cart: json['cart'] != null ? Cart.fromJson(json['cart']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["cart"] = cart?.toJson();
    return data;
  }
}

class StoreCompleteCartRes {
  final Cart? cart;
  final Order? order;
  final Swap? swap;
  final String? type;
  StoreCompleteCartRes({this.cart, this.order, this.swap, this.type});
  factory StoreCompleteCartRes.fromJson(Map<String, dynamic> json) {
    return StoreCompleteCartRes(
      cart: json['cart'] != null ? Cart.fromJson(json['cart']) : null,
      order: json['order'] != null ? Order.fromJson(json['order']) : null,
      swap: json['swap'] != null ? Swap.fromJson(json['swap']) : null,
      type: json["type"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cart != null) data["data"] = cart?.toJson();
    if (order != null) data["data"] = order?.toJson();
    if (swap != null) data["data"] = swap?.toJson();
    return data;
  }
}
