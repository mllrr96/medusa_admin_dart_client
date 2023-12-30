import '../index.dart';

class UserFulfillmentRes {
  final Order? order;

  UserFulfillmentRes(this.order);

  factory UserFulfillmentRes.fromJson(Map<String, dynamic> json) {
    return UserFulfillmentRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}
