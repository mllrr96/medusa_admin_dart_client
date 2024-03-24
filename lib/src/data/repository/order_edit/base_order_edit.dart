
import '../../models/index.dart';

abstract class BaseOrderEdit {
  Future<OrderEdit?> addLineItem({
    required String id,
    required AddLineItemReq userAddLineItemReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<OrderEdit?> deleteLineItem({
    required String id,
    required String itemId,
    Map<String, dynamic>? customHeaders,
  });

  Future<OrderEdit?> upsertLineItemChange({
    required String id,
    required String itemId,
    required int quantity,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteLineItemChangeRes?> deleteLineItemChange({
    required String id,
    required String changeId,
    Map<String, dynamic>? customHeaders,
  });

  Future<OrderEdit?> cancelOrderEdit({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<OrderEdit?> confirmOrderEdit({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<OrderEdit?> createOrderEdit({
    required String id,
    String? internalNote,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteOrderEditRes?> deleteOrderEdit({
    required String id,
    String? internalNote,
    Map<String, dynamic>? customHeaders,
  });

  Future<RetrieveAllOrderEditRes?> retrieveAllOrderEdit({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<OrderEdit?> retrieveOrderEdit({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<OrderEdit?> updateOrderEdit({
    required String id,
    String? internalNote,
    Map<String, dynamic>? customHeaders,
  });

  Future<OrderEdit?> requestOrderEdit({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
