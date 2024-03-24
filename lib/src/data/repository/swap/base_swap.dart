
import '../../models/index.dart';

abstract class BaseSwap {
  Future<Order> cancelSwap({
    required String id,

    required String swapId,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?> createSwapShipment({
    required String id,

    required String swapId,
    required  CreateSwapShipmentSwapReq userCreateSwapShipmentSwapReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?>  createSwap({
    required String id,
    required CreateSwapSwapReq userCreateSwapSwapReq,
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

  Future<RetrieveSwapsRes?> retrieveSwaps({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });
}
