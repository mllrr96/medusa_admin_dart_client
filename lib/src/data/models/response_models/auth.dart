import '../store_models/store/index.dart';

class StoreAuthRes {
  final Customer? customer;

  StoreAuthRes({this.customer});

  factory StoreAuthRes.fromJson(Map<String, dynamic> json) => StoreAuthRes(
      customer: json['customer'] != null
          ? Customer.fromJson(json['customer'])
          : null);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["customer"] = customer?.toJson();
    return data;
  }
}

class StoreGetAuthEmailRes {
  final bool exists;

  StoreGetAuthEmailRes({required this.exists});

  factory StoreGetAuthEmailRes.fromJson(Map<String, dynamic> json) {
    return StoreGetAuthEmailRes(exists: json['exists']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['exists'] = exists;
    return data;
  }
}
