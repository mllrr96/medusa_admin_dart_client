
class StorePostCartsCartPaymentSessionUpdateReqData {
 final  Map<String, dynamic>? data;

  StorePostCartsCartPaymentSessionUpdateReqData({
    required this.data,
  });

 factory StorePostCartsCartPaymentSessionUpdateReqData.fromJson(
      Map<String, dynamic> json) {
    return StorePostCartsCartPaymentSessionUpdateReqData(
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!;
    }
    return data;
  }
}
