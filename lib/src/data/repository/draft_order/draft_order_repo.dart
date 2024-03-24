import 'package:dio/dio.dart';
import '../../models/index.dart';
import 'base_draft_order.dart';

class DraftOrderRepository extends BaseDraftOrder {
  DraftOrderRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _draftOrders = '/draft-orders';
  /// Creates a Draft Order
  @override
  Future<DraftOrder?> createDraftOrder({
    required CreateDraftOrderReq userCreateDraftOrderReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(_draftOrders,
          data: userCreateDraftOrderReq.toJson());
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data['draft_order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Creates a Line Item for the Draft Order
  @override
  Future<DraftOrder?>  createLineItem({
    /// The ID of the Draft Order.
    required String id,
    required CreateLineItemReq userCreateLineItemReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
          '$_draftOrders/$id/line-items',
          data: userCreateLineItemReq.toJson());
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data['draft_order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Deletes a Draft Order
  @override
  Future<DeleteDraftOrderRes?>deleteDraftOrder({
    /// The ID of the Draft Order to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_draftOrders/$id',
      );
      if (response.statusCode == 200) {
        return DeleteDraftOrderRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Removes a Line Item from a Draft Order.
  @override
  Future<DraftOrder?> deleteLineItem({
    /// The ID of the Draft Order.
    required String id,

    /// The ID of the Line Item.
    required String lineId,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_draftOrders/$id/line-items/$lineId',
      );
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data['draft_order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Registers a payment for a Draft Order.
  @override
  Future<Order?> registerPayment({
    /// The ID of the Draft Order.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_draftOrders/$id/pay',
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a Draft Order.
  @override
  Future<DraftOrder?> retrieveDraftOrder({
    /// The ID of the Draft Order.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_draftOrders/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data['draft_order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves an list of Draft Orders
  @override
  Future<DraftOrdersRes?> retrieveDraftOrders({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _draftOrders,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return DraftOrdersRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates a Draft Order
  @override
  Future<DraftOrder?> updateDraftOrder({
    /// The ID of the Draft Order.
    required String id,
    required UpdateDraftOrderReq userUpdateDraftOrderReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_draftOrders/$id',
        data: userUpdateDraftOrderReq.toJson(),
      );
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data['draft_order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates a Line Item for a Draft Order
  @override
  Future<DraftOrder?> updateLineItem({
    /// The ID of the Draft Order.
    required String id,

    /// The ID of the Line Item.
    required String lineId,
    required UpdateLineItemReq userUpdateLineItemReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_draftOrders/$id/line-items/$lineId',
        data: userUpdateLineItemReq.toJson(),
      );
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data['draft_order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
