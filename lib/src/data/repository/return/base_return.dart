
import '../../models/index.dart';
import '../../models/response_models/return.dart';

abstract class BaseReturn {
  /// Requests a Return. If applicable a return label will be created and other plugins notified.
  Future<Order?> requestReturn({
    /// The ID of the Order.
    required String id,
    required UserRequestReturnOrdersReq userRequestReturnOrdersReq,
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
    required UserReceiveReturnOrderReq userReceiveReturnOrderReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a list of Returns
  Future<UserRetrieveReturnsRes?> retrieveReturns({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });
}
