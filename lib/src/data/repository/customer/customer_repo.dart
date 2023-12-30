import 'dart:developer';
import 'package:dio/dio.dart';

import '../../models/index.dart';
import '../../models/response_models/customer.dart';
import 'base_customer.dart';

class CustomerRepository extends BaseCustomer {
  CustomerRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  @override
  Future<CustomersRes?> retrieveCustomers(
      {Map<String, dynamic>? customHeaders, Map<String, dynamic>? queryParameters}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/customers',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CustomersRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
      final response = await _dio.get('/customers/$id', queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return Customer.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Customer?> create({
    required UserCreateCustomerReq userCreateCustomerReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/customers',
        data: userCreateCustomerReq.toJson(),
      );
      // Customer success response code is 201, check medusa docs
      if (response.statusCode == 201) {
        return Customer.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Customer?> update({
    required String id,
    required UserUpdateCustomerReq userUpdateCustomerReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/customers/$id',
        data: userUpdateCustomerReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return Customer.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
