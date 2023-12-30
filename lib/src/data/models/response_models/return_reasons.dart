import '../store_models/store/index.dart';

class StoreReturnReasonsRes {
  final ReturnReason? returnReason;
  StoreReturnReasonsRes({this.returnReason});
  factory StoreReturnReasonsRes.fromJson(json) {
    return StoreReturnReasonsRes(
      returnReason: json["return_reason"] != null
          ? ReturnReason.fromJson(json["return_reason"])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['return_reason'] = returnReason?.toJson();
    return data;
  }
}

class StoreReturnReasonsListRes {
  final List<ReturnReason>? returnReasons;
  StoreReturnReasonsListRes({this.returnReasons});
  factory StoreReturnReasonsListRes.fromJson(json) {
    return StoreReturnReasonsListRes(
      returnReasons: json['return_reasons'] != null
          ? (json['return_reasons'] as List)
              .map((i) => ReturnReason.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['return_reasons'] = returnReasons?.map((e) => e.toJson()).toList();
    return data;
  }
}
