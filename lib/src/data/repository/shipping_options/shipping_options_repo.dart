import 'dart:developer';
import 'package:dio/dio.dart';

import '../../models/index.dart';
import '../../models/response_models/shipping_option_res.dart';
import 'base_shipping_options.dart';

class ShippingOptionsRepository extends BaseShippingOptions {
  ShippingOptionsRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const String _shippingOptions = '/shipping-options';

  /// Creates a Shipping Option
  @override
  Future<ShippingOption?> create({
    required UserCreateShippingOptionReq userCreateShippingOptionReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(_shippingOptions,
          data: userCreateShippingOptionReq.toJson());
      if (response.statusCode == 200) {
        return (ShippingOption.fromJson(response.data));
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Deletes a Shipping Option.
  @override
  Future<UserDeleteShippingOptionRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_shippingOptions/$id',
      );
      if (response.statusCode == 200) {
        return UserDeleteShippingOptionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a Shipping Option.
  @override
  Future<ShippingOption?> retrieve({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_shippingOptions/$id',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return ShippingOption.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a list of Shipping Options.
  @override
  Future<UserRetrieveAllShippingOptionRes?> retrieveAll({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _shippingOptions,
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return UserRetrieveAllShippingOptionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Updates a Shipping Option
  @override
  Future<ShippingOption?> update({
    required String id,
    required UserUpdateShippingOptionReq userUpdateReturnReasonReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_shippingOptions/$id',
        data: userUpdateReturnReasonReq.toJson(),
      );
      if (response.statusCode == 200) {
        return ShippingOption.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
