import '../store_models/store/index.dart';

class StoreOrderEditsRes {
  final OrderEdit? orderEdit;
  StoreOrderEditsRes({required this.orderEdit});

  factory StoreOrderEditsRes.fromJson(json) {
    return StoreOrderEditsRes(
      orderEdit: json["order_edit"] != null
          ? OrderEdit.fromJson(json["order_edit"])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order_edit'] = orderEdit?.toJson();
    return data;
  }
}
