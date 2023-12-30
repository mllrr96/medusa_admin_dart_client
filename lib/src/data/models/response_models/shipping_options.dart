import '../store_models/store/index.dart';

class StoreShippingOptionsListRes {
  final List<ShippingOption>? shippingOptions;
  StoreShippingOptionsListRes({this.shippingOptions});
  factory StoreShippingOptionsListRes.fromJson(json) {
    return StoreShippingOptionsListRes(
      shippingOptions: json['shipping_options'] != null
          ? (json['shipping_options'] as List)
              .map((i) => ShippingOption.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['shipping_options'] = shippingOptions?.map((e) => e.toJson()).toList();
    return data;
  }
}
