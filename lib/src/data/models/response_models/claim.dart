
import '../index.dart';

class UserCancelClaimRes {
  final Order? order;
  const UserCancelClaimRes(this.order);

  factory UserCancelClaimRes.fromJson(Map<String, dynamic> json) {
    return UserCancelClaimRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}

class UserCreateClaimShipmentRes {
  final Order? order;
  const UserCreateClaimShipmentRes(this.order);

  factory UserCreateClaimShipmentRes.fromJson(Map<String, dynamic> json) {
    return UserCreateClaimShipmentRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}

class UserCreateClaimRes {
  final Order? order;
  const  UserCreateClaimRes(this.order);

  factory UserCreateClaimRes.fromJson(Map<String, dynamic> json) {
    return UserCreateClaimRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}

class UserUpdateClaimRes {
  final Order? order;
  const UserUpdateClaimRes(this.order);

  factory UserUpdateClaimRes.fromJson(Map<String, dynamic> json) {
    return UserUpdateClaimRes(json['order'] != null ? Order.fromJson(json['order']) : null);
  }
}
