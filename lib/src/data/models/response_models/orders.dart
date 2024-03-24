import '../index.dart';

class RetrieveOrdersRes {
  final List<Order>? orders;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveOrdersRes({this.orders, this.limit, this.offset, this.count});
  factory RetrieveOrdersRes.fromJson(json) {
    return RetrieveOrdersRes(
      orders: json['orders'] != null
          ? List<Order>.from(json['orders'].map((x) => Order.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class RetrieveOrderReservationsRes {
  final List<Reservation>? reservation;
  final int? limit;
  final int? offset;
  final int? count;
  RetrieveOrderReservationsRes(
      {this.reservation, this.limit, this.offset, this.count});
  factory RetrieveOrderReservationsRes.fromJson(json) {
    return RetrieveOrderReservationsRes(
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
