class PostAuthReq {
  /// description: email address of the customer
  /// [TYPE]: [String]
  /// required
  String? email;

  /// description: password of the customer
  /// [TYPE]: [String]
  /// required
  String? password;

  PostAuthReq({
    this.email,
    this.password,
  });

  PostAuthReq.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
