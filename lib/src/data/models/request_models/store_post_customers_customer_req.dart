class StorePostCustomersCustomerReq {
  final String? billingAddress;
  final String? email;
  final String? firstName;
  final String? lastName;
  final Map<String, dynamic>? metadata;
  final String? password;
  final String? phone;

  StorePostCustomersCustomerReq({
    this.billingAddress,
    this.email,
    this.firstName,
    this.lastName,
    this.metadata,
    this.password,
    this.phone,
  });

 factory StorePostCustomersCustomerReq.fromJson(Map<String, dynamic> json) {
    return StorePostCustomersCustomerReq(
      billingAddress: json['billing_address'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      metadata: json['metadata'],
      password: json['password'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['billing_address'] = billingAddress;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    if (metadata != null) {
      data['metadata'] = metadata;
    }
    data['password'] = password;
    data['phone'] = phone;
    return data;
  }
}
