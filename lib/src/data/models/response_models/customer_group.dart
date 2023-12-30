import '../index.dart';

class UserRetrieveCustomerGroupsRes {
  final List<CustomerGroup>? customerGroups;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveCustomerGroupsRes(
      {this.customerGroups, this.limit, this.offset, this.count});
  factory UserRetrieveCustomerGroupsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveCustomerGroupsRes(
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

class UserAddCustomersRes {
  CustomerGroup? customerGroup;

  UserAddCustomersRes.fromJson(Map<String, dynamic> json) {
    customerGroup = CustomerGroup.fromJson(json['customer_group']);
  }
}

class UserRetrieveCustomersRes {
  final List<Customer>? customers;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveCustomersRes(
      {this.customers, this.limit, this.offset, this.count});
  factory UserRetrieveCustomersRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveCustomersRes(
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

class UserRetrieveCustomerGroupRes {
  CustomerGroup? customerGroup;

  UserRetrieveCustomerGroupRes.fromJson(Map<String, dynamic> json) {
    customerGroup = CustomerGroup.fromJson(json['customer_group']);
  }
}

class UserUpdateCustomerGroupRes {
  CustomerGroup? customerGroup;

  UserUpdateCustomerGroupRes.fromJson(Map<String, dynamic> json) {
    customerGroup = CustomerGroup.fromJson(json['customer_group']);
  }
}

class UserRemoveCustomersRes {
  CustomerGroup? customerGroup;

  UserRemoveCustomersRes.fromJson(Map<String, dynamic> json) {
    customerGroup = CustomerGroup.fromJson(json['customer_group']);
  }
}

class UserCreateCustomerGroupRes {
  CustomerGroup? customerGroup;

  UserCreateCustomerGroupRes.fromJson(Map<String, dynamic> json) {
    customerGroup = CustomerGroup.fromJson(json['customer_group']);
  }
}

class UserDeleteCustomerGroupRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "item_change"
  final String? object;

  /// Whether or not the Order Edit Item Change was deleted.
  final bool deleted;
  UserDeleteCustomerGroupRes({required this.deleted, this.id, this.object});
  factory UserDeleteCustomerGroupRes.fromJson(json) {
    return UserDeleteCustomerGroupRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
