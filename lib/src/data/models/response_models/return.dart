import '../index.dart';

class UserCancelReturnOrderRes {
  final Order? order;
  UserCancelReturnOrderRes(this.order);

  factory UserCancelReturnOrderRes.fromJson(json) {
    return UserCancelReturnOrderRes(
        json["order"] != null ? Order.fromJson(json["order"]) : null);
  }
}

class UserReceiveReturnOrderRes {
  final Return? returnOrder;
  UserReceiveReturnOrderRes(this.returnOrder);

  factory UserReceiveReturnOrderRes.fromJson(json) {
    return UserReceiveReturnOrderRes(
        json["return"] != null ? Return.fromJson(json["return"]) : null);
  }
}

class UserRetrieveReturnsRes {
  final List<Return>? returns;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveReturnsRes({this.returns, this.limit, this.offset, this.count});
  factory UserRetrieveReturnsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveReturnsRes(
      returns: json['returns'] != null
          ? List<Return>.from(json['returns'].map((x) => Return.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
