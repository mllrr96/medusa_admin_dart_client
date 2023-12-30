class StorePostCustomersReq {
 final String? email;
  final String? firstName;
  final String? lastName;
  final String? password;
  final String? phone;

  StorePostCustomersReq({
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.phone,
  });

 factory StorePostCustomersReq.fromJson(Map<String, dynamic> json) {
    return StorePostCustomersReq(
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      password: json['password'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['password'] = password;
    data['phone'] = phone;
    return data;
  }
}
