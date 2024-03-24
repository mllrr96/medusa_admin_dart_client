import 'customer_group_base.dart';
import 'package:dio/dio.dart';
import '../../models/index.dart';

class CustomerGroupRepository extends BaseCustomerGroup {
  CustomerGroupRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _groups = '/customer-groups';
  @override
  Future<CustomerGroup?> addCustomers({
    required String id,
    required List<String> customerIds,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      var data = <Map<String, dynamic>>[];
      for (var id in customerIds) {
        data.add({'id': id});
      }

      final response = await _dio.post(
        '$_groups/$id/customers/batch',
        data: {
          'customer_ids': data,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data['customer_group']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<CustomerGroup?> createCustomerGroup({
    required String name,
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _groups,
        queryParameters: queryParameters,
        data: {
          'name': name,
          if (metadata != null) 'metadata': metadata,
        },
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data['customer_group']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DeleteCustomerGroupRes?> deleteCustomerGroup({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_groups/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return DeleteCustomerGroupRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Removes a list of customers, represented by id's, from a customer group.
  @override
  Future<CustomerGroup?> removeCustomers({
    /// The ID of the customer group.
    required String id,

    /// The ids of the customers to remove
    required List<String> customerIds,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      var data = <Map<String, dynamic>>[];
      for (var id in customerIds) {
        data.add({'id': id});
      }
      final response = await _dio.delete(
        '$_groups/$id/customers/batch',
        data: {
          'customer_ids': data,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data['customer_group']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<CustomerGroup?> retrieveCustomerGroup({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_groups/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data['customer_group']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<RetrieveCustomerGroupsRes?> retrieveCustomerGroups({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _groups,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return RetrieveCustomerGroupsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a list of customers in a customer group
  @override
  Future<RetrieveCustomersRes?> retrieveCustomers({
    /// The ID of the customer group.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_groups/$id/customers',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return RetrieveCustomersRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<CustomerGroup?> updateCustomerGroup({
    required String id,
    required String name,
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_groups/$id',
        queryParameters: queryParameters,
        data: {
          'name': name,
          if (metadata != null) 'metadata': metadata,
        },
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data['customer_group']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
