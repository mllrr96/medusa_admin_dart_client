import '../../models/index.dart';

abstract class BaseFulfillment {
  Future<Order?> createFulfillment({
    required String id,
    required CreateFulfillmentReq userCreateFulfillmentReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?> cancelFulfillment({
    required String id,
    required String fulfillmentId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?> createClaimFulfillment({
    required String id,
    required String claimId,
    Map<String, dynamic>? metadata,
    bool? noNotification,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?> cancelClaimFulfillment({
    required String id,
    required String claimId,
    required String fulfillmentId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?> createSwapFulfillment({
    required String id,
    required String swapId,
    Map<String, dynamic>? metadata,
    bool? noNotification,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?> cancelSwapFulfillment({
    required String id,
    required String swapId,
    required String fulfillmentId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
