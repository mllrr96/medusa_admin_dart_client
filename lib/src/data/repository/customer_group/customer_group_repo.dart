import 'dart:developer';

import 'package:dio/dio.dart';
import '../../models/index.dart';
import '../../models/response_models/customer_group.dart';
import 'customer_group_base.dart';

class CustomerGroupRepository extends BaseCustomerGroup {
  CustomerGroupRepository(Dio dio) : _dio = dio;
  final Dio _dio;

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
        '/customer-groups/$id/customers/batch',
        data: {
          'customer_ids': data,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/customer-groups',
        queryParameters: queryParameters,
        data: {
          'name': name,
          if (metadata != null) 'metadata': metadata,
        },
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteCustomerGroupRes?> deleteCustomerGroup({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '/customer-groups/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserDeleteCustomerGroupRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/customer-groups/$id/customers/batch',
        data: {
          'customer_ids': data,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/customer-groups/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserRetrieveCustomerGroupsRes?> retrieveCustomerGroups({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/customer-groups',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserRetrieveCustomerGroupsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a list of customers in a customer group
  @override
  Future<UserRetrieveCustomersRes?> retrieveCustomers({
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
        '/customer-groups/$id/customers',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserRetrieveCustomersRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/customer-groups/$id',
        queryParameters: queryParameters,
        data: {
          'name': name,
          if (metadata != null) 'metadata': metadata,
        },
      );
      if (response.statusCode == 200) {
        return CustomerGroup.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
