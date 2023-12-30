import '../index.dart';

class CustomersRes {
  final List<Customer>? customers;
  final int? limit;
  final int? offset;
  final int? count;
  CustomersRes({this.customers, this.limit, this.offset, this.count});
  factory CustomersRes.fromJson(json) {
    return CustomersRes(
      customers: json['customers'] != null
          ? List<Customer>.from(
              json['customers'].map((x) => Customer.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class CustomerRes {
  Customer? customer;

  CustomerRes.fromJson(json) {
    if (json['customer'] != null) {
      customer = Customer.fromJson(json['customer']);
    }
  }
}
