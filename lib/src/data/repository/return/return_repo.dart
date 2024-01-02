import 'dart:developer';
import 'package:dio/dio.dart';
import 'base_return.dart';
import '../../models/index.dart';

class ReturnRepository extends BaseReturn {
  ReturnRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _orders = '/orders';
  static const _returns = '/returns';


  @override
  Future<Order?> cancelReturn({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/return',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Return?> receiveReturn({
    required String id,
    required UserReceiveReturnOrderReq userReceiveReturnOrderReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_returns/$id/receive',
        data: userReceiveReturnOrderReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Return.fromJson(response.data['return']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Order?>  requestReturn({
    required String id,
    required UserRequestReturnOrdersReq userRequestReturnOrdersReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/return',
        data: userRequestReturnOrdersReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserRetrieveReturnsRes?>  retrieveReturns({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _returns,
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return UserRetrieveReturnsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
