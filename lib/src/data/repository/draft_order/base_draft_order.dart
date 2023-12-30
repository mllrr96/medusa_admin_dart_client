
import '../../models/index.dart';
import '../../models/response_models/draft_order.dart';

abstract class BaseDraftOrder {
  Future<DraftOrder?> createDraftOrder({
    required UserCreateDraftOrderReq userCreateDraftOrderReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<DraftOrder?> updateDraftOrder({
    required String id,
    required UserUpdateDraftOrderReq userUpdateDraftOrderReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeleteDraftOrderRes?> deleteDraftOrder({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDraftOrdersRes?> retrieveDraftOrders({
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
    required UserCreateLineItemReq userCreateLineItemReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<DraftOrder?> updateLineItem({
    required String id,
    required String lineId,
    required UserUpdateLineItemReq userUpdateLineItemReq,
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
