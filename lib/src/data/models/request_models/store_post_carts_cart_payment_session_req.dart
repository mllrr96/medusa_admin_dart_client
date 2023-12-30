
class StorePostCartsCartPaymentSessionReq {
  final String? providerId;

  StorePostCartsCartPaymentSessionReq({
    required this.providerId,
  });

 factory StorePostCartsCartPaymentSessionReq.fromJson(Map<String, dynamic> json) {
    return StorePostCartsCartPaymentSessionReq(
      providerId: json['provider_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['provider_id'] = providerId;
    return data;
  }
}
