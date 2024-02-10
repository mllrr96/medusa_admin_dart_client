
import '../../models/index.dart';

abstract class BaseOrderEdit {
  Future<OrderEdit?> addLineItem({
    required String id,
    required UserAddLineItemReq userAddLineItemReq,
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

  Future<UserDeleteLineItemChangeRes?> deleteLineItemChange({
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

  Future<UserDeleteOrderEditRes?> deleteOrderEdit({
    required String id,
    String? internalNote,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserRetrieveAllOrderEditRes?> retrieveAllOrderEdit({
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
