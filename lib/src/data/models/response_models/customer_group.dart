import '../index.dart';

class RetrieveCustomerGroupsRes {
  final List<CustomerGroup>? customerGroups;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveCustomerGroupsRes(
      {this.customerGroups, this.limit, this.offset, this.count});
  factory RetrieveCustomerGroupsRes.fromJson(Map<String, dynamic> json) {
    return RetrieveCustomerGroupsRes(
      customerGroups: json['customer_groups'] != null
          ? List<CustomerGroup>.from(
              json['customer_groups'].map((x) => CustomerGroup.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class RetrieveCustomersRes {
  final List<Customer>? customers;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveCustomersRes(
      {this.customers, this.limit, this.offset, this.count});
  factory RetrieveCustomersRes.fromJson(Map<String, dynamic> json) {
    return RetrieveCustomersRes(
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

class RetrieveCustomerGroupRes {
  CustomerGroup? customerGroup;

  RetrieveCustomerGroupRes.fromJson(Map<String, dynamic> json) {
    customerGroup = CustomerGroup.fromJson(json['customer_group']);
  }
}

class DeleteCustomerGroupRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "item_change"
  final String? object;

  /// Whether or not the Order Edit Item Change was deleted.
  final bool deleted;
  const DeleteCustomerGroupRes({required this.deleted, this.id, this.object});
  factory DeleteCustomerGroupRes.fromJson(json) {
    return DeleteCustomerGroupRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
