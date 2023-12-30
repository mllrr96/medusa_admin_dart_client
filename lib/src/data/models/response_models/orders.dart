import '../index.dart';

class UserRetrieveOrderRes {
  Order? order;

  UserRetrieveOrderRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserUpdateOrderRes {
  Order? order;

  UserUpdateOrderRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserArchiveOrderRes {
  Order? order;

  UserArchiveOrderRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserCancelOrderRes {
  Order? order;

  UserCancelOrderRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserCaptureOrderPaymentRes {
  Order? order;

  UserCaptureOrderPaymentRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserCreateReservationForLineItemOrderRes {
  Reservation? reservation;

  UserCreateReservationForLineItemOrderRes.fromJson(json) {
    reservation = json["reservation"] != null
        ? Reservation.fromJson(json["reservation"])
        : null;
  }
}

class UserCompleteOrderRes {
  Order? order;

  UserCompleteOrderRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserCreateOrderShipmentRes {
  Order? order;

  UserCreateOrderShipmentRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserCreateRefundOrdersRes {
  Order? order;

  UserCreateRefundOrdersRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserRequestReturnOrderRes {
  Order? order;

  UserRequestReturnOrderRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserAddShippingMethodOrderRes {
  Order? order;

  UserAddShippingMethodOrderRes.fromJson(json) {
    order = json["order"] != null ? Order.fromJson(json["order"]) : null;
  }
}

class UserRetrieveOrdersRes {
  final List<Order>? orders;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveOrdersRes({this.orders, this.limit, this.offset, this.count});
  factory UserRetrieveOrdersRes.fromJson(json) {
    return UserRetrieveOrdersRes(
      orders: json['orders'] != null
          ? List<Order>.from(json['orders'].map((x) => Order.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserRetrieveOrderReservationsRes {
  final List<Reservation>? reservation;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveOrderReservationsRes(
      {this.reservation, this.limit, this.offset, this.count});
  factory UserRetrieveOrderReservationsRes.fromJson(json) {
    return UserRetrieveOrderReservationsRes(
      reservation: json['reservation'] != null
          ? List<Reservation>.from(
              json['reservation'].map((x) => Reservation.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
