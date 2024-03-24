
import 'package:dio/dio.dart';

import '../../models/index.dart';
import 'base_claim.dart';

class ClaimRepository extends BaseClaim {
  ClaimRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _claims = '/claims';
  static const _orders = '/orders';
  @override
  Future<Order?> cancelClaim({
    required String id,
    required String claimId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orders/$id/$_claims/$claimId/cancel',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Order?> createClaim(
      {required String id,
      required CreateClaimReq userCreateClaimReq,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orders/$id/$_claims',
        queryParameters: queryParameters,
        data: userCreateClaimReq.toJson(),
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Order?> updateClaim({
    required String id,
    required String claimId,
    required UpdateClaimReq userUpdateClaimReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orders/$id/$_claims/$claimId',
        queryParameters: queryParameters,
        data: userUpdateClaimReq.toJson(),
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Order?> createClaimFulfillment({
    required String id,
    required String claimId,
    required CreateClaimFulfillmentReq userCreateClaimFulfillmentReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orders/$id/$_claims/$claimId/fulfillments',
        queryParameters: queryParameters,
        data: userCreateClaimFulfillmentReq.toJson(),
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Order?> cancelClaimFulfillment({
    required String id,
    required String claimId,
    required String fulfillmentId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orders/$id/$_claims/$claimId/fulfillments/$fulfillmentId/cancel',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Order?> shipClaimFulfillment({
    required String id,
    required String claimId,
    required ShipClaimFulfillmentReq shipClaimFulfillmentReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orders/$id/$_claims/$claimId/shipments',
        queryParameters: queryParameters,
        data: shipClaimFulfillmentReq.toJson(),
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
