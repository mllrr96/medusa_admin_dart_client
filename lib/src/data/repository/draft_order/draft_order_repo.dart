import 'dart:developer';
import 'package:dio/dio.dart';
import '../../models/index.dart';
import '../../models/response_models/draft_order.dart';
import 'base_draft_order.dart';

class DraftOrderRepository extends BaseDraftOrder {
  DraftOrderRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  /// Creates a Draft Order
  @override
  Future<DraftOrder?> createDraftOrder({
    required UserCreateDraftOrderReq userCreateDraftOrderReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post('/draft-orders',
          data: userCreateDraftOrderReq.toJson());
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Creates a Line Item for the Draft Order
  @override
  Future<DraftOrder?>  createLineItem({
    /// The ID of the Draft Order.
    required String id,
    required UserCreateLineItemReq userCreateLineItemReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
          '/draft-orders/$id/line-items',
          data: userCreateLineItemReq.toJson());
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Deletes a Draft Order
  @override
  Future<UserDeleteDraftOrderRes?>deleteDraftOrder({
    /// The ID of the Draft Order to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '/draft-orders/$id',
      );
      if (response.statusCode == 200) {
        return UserDeleteDraftOrderRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/draft-orders/$id/line-items/$lineId',
      );
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/draft-orders/$id/pay',
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/draft-orders/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves an list of Draft Orders
  @override
  Future<UserDraftOrdersRes?> retrieveDraftOrders({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/draft-orders',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserDraftOrdersRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Updates a Draft Order
  @override
  Future<DraftOrder?> updateDraftOrder({
    /// The ID of the Draft Order.
    required String id,
    required UserUpdateDraftOrderReq userUpdateDraftOrderReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/draft-orders/$id',
        data: userUpdateDraftOrderReq.toJson(),
      );
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
    required UserUpdateLineItemReq userUpdateLineItemReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/draft-orders/$id/line-items/$lineId',
        data: userUpdateLineItemReq.toJson(),
      );
      if (response.statusCode == 200) {
        return DraftOrder.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
