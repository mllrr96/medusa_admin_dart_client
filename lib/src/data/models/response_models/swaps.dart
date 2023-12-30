import '../store_models/store/index.dart';

class StoreSwapsRes {
  final Swap? swap;
  StoreSwapsRes({this.swap});
  factory StoreSwapsRes.fromJson(json) {
    return StoreSwapsRes(
      swap: json['swap'] != null ? Swap.fromJson(json['swap']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['swap'] = swap?.toJson();
    return data;
  }
}
