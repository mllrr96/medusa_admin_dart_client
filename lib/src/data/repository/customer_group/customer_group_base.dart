import '../../models/index.dart';

abstract class BaseCustomerGroup {
  /// Retrieve a list of customer groups.
  Future<RetrieveCustomerGroupsRes?> retrieveCustomerGroups({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Retrieves a Customer Group.
  Future<CustomerGroup?> retrieveCustomerGroup({
    /// The ID of the Customer Group.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Retrieves a Customer Group.
  Future<CustomerGroup?> updateCustomerGroup({
    /// The ID of the Customer Group.
    required String id,

    /// Name of the customer group
    required String name,

    /// Metadata for the customer group.
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Adds a list of customers, represented by id's, to a customer group.
  Future<CustomerGroup?> addCustomers({
    /// The ID of the customer group.
    required String id,

    /// The ids of the customers to add
    required List<String> customerIds,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<RetrieveCustomersRes?> retrieveCustomers({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<CustomerGroup?> removeCustomers({
    required String id,
    required List<String> customerIds,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Creates a CustomerGroup.
  Future<CustomerGroup?> createCustomerGroup({
    /// Name of the customer group
    required String name,

    /// Metadata for the customer.
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Deletes a CustomerGroup.
  Future<DeleteCustomerGroupRes?> deleteCustomerGroup({
    /// Name of the customer group
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });
}
