class StoreCustomersListPaymentMethodsRes {
  final List<PaymentMethod>? paymentMethods;
  const StoreCustomersListPaymentMethodsRes({this.paymentMethods});
  factory StoreCustomersListPaymentMethodsRes.fromJson(json) {
    return StoreCustomersListPaymentMethodsRes(
      paymentMethods: json['payment_methods'] != null
          ? (json['payment_methods'] as List)
              .map((i) => PaymentMethod.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['payment_methods'] = paymentMethods?.map((e) => e.toJson()).toList();
    return data;
  }
}

class PaymentMethod {
  final String? providerId;
  final Map<String, dynamic>? data;
  const PaymentMethod({
    this.providerId,
    this.data,
  });
  factory PaymentMethod.fromJson(json) {
    // providerId = json["provider_id"];
    // data = json["data"];
    return PaymentMethod(
      providerId: json["provider_id"],
      data: json["data"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['provider_id'] = providerId;
    data['data'] = data;
    return data;
  }
}
