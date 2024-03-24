
import '../../models/index.dart';

abstract class BaseReturn {
  /// Requests a Return. If applicable a return label will be created and other plugins notified.
  Future<Order?> requestReturn({
    /// The ID of the Order.
    required String id,
    required RequestReturnOrdersReq userRequestReturnOrdersReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Registers a Return as canceled.
  Future<Order?> cancelReturn({
    /// The ID of the Order.
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Registers a Return as received. Updates statuses on Orders and Swaps accordingly.
  Future<Return?> receiveReturn({
    /// The ID of the Order.
    required String id,
    required ReceiveReturnOrderReq userReceiveReturnOrderReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a list of Returns
  Future<RetrieveReturnsRes?> retrieveReturns({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });
}
