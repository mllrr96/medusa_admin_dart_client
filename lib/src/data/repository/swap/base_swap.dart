
import '../../models/index.dart';
import '../../models/response_models/swap.dart';

abstract class BaseSwap {
  Future<Order?> cancelSwap({
    required String id,

    required String swapId,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?> createSwapShipment({
    required String id,

    required String swapId,
    required  UserCreateSwapShipmentSwapReq userCreateSwapShipmentSwapReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?>  createSwap({
    required String id,
    required UserCreateSwapSwapReq userCreateSwapSwapReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });


  Future<Order?>  processSwapPayment({
    required String id,

    required String swapId,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<Swap?> retrieveSwap({
    required String swapId,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserRetrieveSwapsRes?> retrieveSwaps({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });
}
