import 'package:dio/dio.dart';
import 'base_shipping_options.dart';
import '../../models/index.dart';

class ShippingOptionsRepository extends BaseShippingOptions {
  ShippingOptionsRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const String _shippingOptions = '/shipping-options';

  /// Creates a Shipping Option
  @override
  Future<ShippingOption?> create({
    required CreateShippingOptionReq userCreateShippingOptionReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(_shippingOptions,
          data: userCreateShippingOptionReq.toJson());
      if (response.statusCode == 200) {
        return ShippingOption.fromJson(response.data['shipping_option']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Deletes a Shipping Option.
  @override
  Future<DeleteShippingOptionRes?> delete({
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
        return DeleteShippingOptionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

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
        return ShippingOption.fromJson(response.data['shipping_option']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a list of Shipping Options.
  @override
  Future<RetrieveAllShippingOptionRes?> retrieveAll({
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
        return RetrieveAllShippingOptionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates a Shipping Option
  @override
  Future<ShippingOption?> update({
    required String id,
    required UpdateShippingOptionReq userUpdateShippingOptionReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_shippingOptions/$id',
        data: userUpdateShippingOptionReq.toJson(),
      );
      if (response.statusCode == 200) {
        return ShippingOption.fromJson(response.data['shipping_option']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
