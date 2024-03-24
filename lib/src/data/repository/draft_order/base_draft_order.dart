
import '../../models/index.dart';

abstract class BaseDraftOrder {
  Future<DraftOrder?> createDraftOrder({
    required CreateDraftOrderReq userCreateDraftOrderReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<DraftOrder?> updateDraftOrder({
    required String id,
    required UpdateDraftOrderReq userUpdateDraftOrderReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteDraftOrderRes?> deleteDraftOrder({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<DraftOrdersRes?> retrieveDraftOrders({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<DraftOrder?> retrieveDraftOrder({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<DraftOrder?> createLineItem({
    required String id,
    required CreateLineItemReq userCreateLineItemReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<DraftOrder?> updateLineItem({
    required String id,
    required String lineId,
    required UpdateLineItemReq userUpdateLineItemReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<DraftOrder?> deleteLineItem({
    required String id,

    required String lineId,
    Map<String, dynamic>? customHeaders,
  });

  Future<Order?> registerPayment({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
