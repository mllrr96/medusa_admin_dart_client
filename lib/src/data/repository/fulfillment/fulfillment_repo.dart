import 'package:dio/dio.dart';
import '../../models/index.dart';
import 'base_fulfillment.dart';

class FulfillmentRepository extends BaseFulfillment {
  FulfillmentRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _orders = '/orders';
  static const _fulfillments = '/fulfillments';
  /// Registers a claim's fulfillment as canceled.
  @override
  Future<Order?> cancelClaimFulfillment({
    /// The ID of the Order which the Claim relates to.
    required String id,

    /// The ID of the Claim which the Fulfillment relates to.
    required String claimId,

    /// The ID of the Fulfillment
    required String fulfillmentId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/claims/$claimId$_fulfillments/$fulfillmentId/cancel',
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

  /// Registers a Fulfillment as canceled.
  @override
  Future<Order?> cancelFulfillment({
    /// The ID of the Order which the Fulfillment relates to.
    required String id,

    /// The ID of the Fulfillment
    required String fulfillmentId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id$_fulfillments/$fulfillmentId/cancel',
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

  /// Registers a claim's fulfillment as canceled.
  @override
  Future<Order?> cancelSwapFulfillment({
    /// The ID of the Order which the Claim relates to.
    required String id,

    /// The ID of the Swap which the Fulfillment relates to.
    required String swapId,

    /// The ID of the Fulfillment
    required String fulfillmentId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/swaps/$swapId$_fulfillments/$fulfillmentId/cancel',
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

  /// Creates a Fulfillment for a Claim.
  @override
  Future<Order?> createClaimFulfillment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Claim.
    required String claimId,

    /// An optional set of key-value pairs to hold additional information.
    Map<String, dynamic>? metadata,

    /// If set to true no notification will be send related to this Claim.
    bool? noNotification,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/claims/$claimId$_fulfillments',
        data: {
          if (metadata != null) 'metadata': metadata,
          if (noNotification != null) 'no_notification': noNotification,
        },
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

  /// Creates a Fulfillment of an Order - will notify Fulfillment Providers to prepare a shipment.
  @override
  Future<Order?> createFulfillment({
    /// The ID of the Order.
    required String id,
    required CreateFulfillmentReq userCreateFulfillmentReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/fulfillment',
        data: userCreateFulfillmentReq.toJson(),
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

  /// Creates a Fulfillment for a Swap.
  @override
  Future<Order?> createSwapFulfillment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Swap.
    required String swapId,

    /// An optional set of key-value pairs to hold additional information.
    Map<String, dynamic>? metadata,

    /// If set to true no notification will be send related to this Claim.
    bool? noNotification,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/swaps/$swapId$_fulfillments',
        data: {
          if (metadata != null) 'metadata': metadata,
          if (noNotification != null) 'no_notification': noNotification,
        },
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
