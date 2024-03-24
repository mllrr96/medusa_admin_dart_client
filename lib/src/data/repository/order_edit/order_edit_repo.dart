import 'base_order_edit.dart';
import 'package:dio/dio.dart';
import '../../models/index.dart';

class OrderEditRepository extends BaseOrderEdit {
  OrderEditRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _orderEdits = '/order-edits';

  /// Create an OrderEdit LineItem
  @override
  Future<OrderEdit?> addLineItem({
    /// The ID of the Order Edit.
    required String id,
    required AddLineItemReq userAddLineItemReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orderEdits/$id/items',
        data: userAddLineItemReq.toJson(),
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Cancels an OrderEdit.
  @override
  Future<OrderEdit?> cancelOrderEdit({
    /// The ID of the Order Edit.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orderEdits/$id/cancel',
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Confirms an OrderEdit.
  @override
  Future<OrderEdit?> confirmOrderEdit({
    /// The ID of the Order Edit.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orderEdits/$id/confirm',
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Creates an OrderEdit.
  @override
  Future<OrderEdit?> createOrderEdit({
    /// The ID of the order to create the edit for.
    required String id,

    /// An optional note to create for the order edit.
    String? internalNote,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        _orderEdits,
        data: {
          'order_id': id,
          if (internalNote != null) 'internal_note': internalNote,
        },
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Delete line items from an order edit and create change item
  @override
  Future<OrderEdit?> deleteLineItem({
    /// The ID of the Order Edit to delete from.
    required String id,

    /// The ID of the order edit item to delete from order.
    required String itemId,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '$_orderEdits/$id/items/$itemId',
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Deletes an Order Edit Item Change
  @override
  Future<DeleteLineItemChangeRes?> deleteLineItemChange({
    /// The ID of the Order Edit to delete.
    required String id,
    required String changeId,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '$_orderEdits/$id/changes/$changeId',
      );
      if (response.statusCode == 200) {
        return DeleteLineItemChangeRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Deletes an OrderEdit.
  @override
  Future<DeleteOrderEditRes?> deleteOrderEdit({
    /// The ID of the order to create the edit for.
    required String id,

    /// An optional note to create for the order edit.
    String? internalNote,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '$_orderEdits/$id',
      );
      if (response.statusCode == 200) {
        return DeleteOrderEditRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Request customer confirmation of an Order Edit
  @override
  Future<OrderEdit?> requestOrderEdit({
    /// The ID of the Order Edit to request confirmation from.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orderEdits/$id/request',
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// List OrderEdits.
  @override
  Future<RetrieveAllOrderEditRes?> retrieveAllOrderEdit({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        _orderEdits,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return RetrieveAllOrderEditRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves an OrderEdit.
  @override
  Future<OrderEdit?> retrieveOrderEdit({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '$_orderEdits/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates an OrderEdit.
  @override
  Future<OrderEdit?> updateOrderEdit({
    required String id,

    /// An optional note to create or update for the order edit.
    String? internalNote,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orderEdits/$id',
        data: {
          'internal_note': internalNote,
        },
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Create or update the order edit change holding the line item changes
  @override
  Future<OrderEdit?> upsertLineItemChange({
    /// The ID of the Order Edit to update.
    required String id,

    /// The ID of the order edit item to update.
    required String itemId,

    /// The quantity to update
    required int quantity,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_orderEdits/$id/items/$itemId',
        data: {
          'quantity': quantity,
        },
      );
      if (response.statusCode == 200) {
        return OrderEdit.fromJson(response.data['order_edit']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
