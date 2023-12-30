class StorePostCustomersCustomerPasswordTokenReq {
  final String? email;

  StorePostCustomersCustomerPasswordTokenReq({this.email});

 factory StorePostCustomersCustomerPasswordTokenReq.fromJson(
      Map<String, dynamic> json) {
  return StorePostCustomersCustomerPasswordTokenReq(
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    return data;
  }
}
