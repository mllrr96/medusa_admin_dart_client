import 'package:dio/dio.dart';
import 'base_customer.dart';

import '../../models/index.dart';

class CustomerRepository extends BaseCustomer {
  CustomerRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _customers = '/customers';
  @override
  Future<CustomersRes?> retrieveCustomers(
      {Map<String, dynamic>? customHeaders, Map<String, dynamic>? queryParameters}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _customers,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CustomersRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Customer?> retrieve(
      {required String id, Map<String, dynamic>? customHeaders, Map<String, dynamic>? queryParameters}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get('$_customers/$id', queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return Customer.fromJson(response.data['customer']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Customer?> create({
    required CreateCustomerReq userCreateCustomerReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _customers,
        data: userCreateCustomerReq.toJson(),
      );
      // Customer success response code is 201, check medusa docs
      if (response.statusCode == 201) {
        return Customer.fromJson(response.data['customer']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Customer?> update({
    required String id,
    required UpdateCustomerReq userUpdateCustomerReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_customers/$id',
        data: userUpdateCustomerReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return Customer.fromJson(response.data['customer']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
