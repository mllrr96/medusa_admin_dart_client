class StorePostCartsCartShippingMethodReq {
  final String? optionId;
  final Map<String, dynamic>? data;

  StorePostCartsCartShippingMethodReq({
    required this.optionId,
    this.data,
  });

  factory StorePostCartsCartShippingMethodReq.fromJson(
      Map<String, dynamic> json) {
    return StorePostCartsCartShippingMethodReq(
      optionId: json['option_id'],
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['option_id'] = optionId;
    if (this.data != null) {
      data['data'] = this.data!;
    }
    return data;
  }
}
