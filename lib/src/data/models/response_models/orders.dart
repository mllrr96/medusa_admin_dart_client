import '../index.dart';

class UserRetrieveOrdersRes {
  final List<Order>? orders;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveOrdersRes({this.orders, this.limit, this.offset, this.count});
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
