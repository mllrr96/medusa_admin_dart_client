import '../../models/index.dart';

abstract class BaseCustomer {
  /// Retrieves a list of Customers
  Future<CustomersRes?> retrieveCustomers({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Retrieves a customer
  Future<Customer?> retrieve({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Updates a customer
  Future<Customer?> update({
    required String id,
    required UpdateCustomerReq userUpdateCustomerReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Create a customer
  Future<Customer?> create({
    required CreateCustomerReq userCreateCustomerReq,

    Map<String, dynamic>? customHeaders,
  });
}
