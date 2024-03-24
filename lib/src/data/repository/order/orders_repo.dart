import 'package:dio/dio.dart';
import '../../models/index.dart';
import 'base_orders.dart';

class OrdersRepository extends BaseOrders {
  OrdersRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _orders = '/orders';
  /// Retrieves an order
  @override
  Future<Order?> retrieveOrder({
    /// The ID of the Order.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.get('$_orders/$id', queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a list of Orders
  @override
  Future<RetrieveOrdersRes?> retrieveOrders({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _orders,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return RetrieveOrdersRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Adds a Shipping Method to an Order. If another Shipping Method exists with the same Shipping Profile,
  /// the previous Shipping Method will be replaced.
  @override
  Future<Order?> addShippingMethod({
    /// The ID of the Order.
    required String id,

    /// The ID of the Shipping Option to create the Shipping Method from.
    required String optionId,

    /// The price (excluding VAT) that should be charged for the Shipping Method
    required int price,

    /// The data required for the Shipping Option to create a Shipping Method. This will depend on the Fulfillment Provider.
    data,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/shipping-methods',
        data: {
          'price': price,
          'option_id': optionId,
          if (data != null) 'data': data,
        },
        queryParameters: queryParameters,
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

  /// Archives the order with the given id.
  @override
  Future<Order?> archiveOrder({
    /// The ID of the Order.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/archive',
        queryParameters: queryParameters,
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

  /// Registers an Order as canceled. This triggers a flow that will cancel any created Fulfillments and Payments,
  /// may fail if the Payment or Fulfillment Provider is unable to cancel the Payment/Fulfillment.
  @override
  Future<Order?> cancelOrder({
    /// The ID of the Order.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/cancel',
        queryParameters: queryParameters,
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

  /// Captures all the Payments associated with an Order.
  @override
  Future<Order?> captureOrderPayment({
    /// The ID of the Order.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/capture',
        queryParameters: queryParameters,
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

  /// Completes an Order
  @override
  Future<Order?> completeOrder({
    /// The ID of the Order.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/complete',
        queryParameters: queryParameters,
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

  /// Registers a Fulfillment as shipped.
  @override
  Future<Order?> createOrderShipment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Fulfillment.
    required String fulfillmentId,

    /// The tracking numbers for the shipment.
    List<String>? trackingNumbers,

    /// If set to true no notification will be send related to this Shipment.
    bool? noNotification,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/shipment',
        data: {
          'fulfillment_id': fulfillmentId,
          if (trackingNumbers != null) 'tracking_numbers': trackingNumbers,
          if (noNotification != null) 'no_notification': noNotification,
        },
        queryParameters: queryParameters,
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

  /// Issues a Refund.
  @override
  Future<Order?> createRefund({
    /// The ID of the Order.
    required String id,
    required CreateRefundOrdersReq userCreateRefundOrdersReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/refund',
        data: userCreateRefundOrdersReq.toJson(),
        queryParameters: queryParameters,
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

  /// Creates a Reservation for a line item at a specified location, optionally for a partial quantity.
  @override
  Future<Reservation?> createReservationForLineItem({
    /// The ID of the Order.
    required String id,

    /// The ID of the Line item.
    required String lineItemId,

    /// The id of the location of the reservation
    required String locationId,

    /// The quantity to reserve
    int? quantity,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/line-items/$lineItemId/reservations',
        data: {
          'location_id': locationId,
          if (quantity != null) 'quantity': quantity,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return Reservation.fromJson(response.data['reservation']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Requests a Return. If applicable a return label will be created and other plugins notified.
  @override
  Future<Order?> requestReturn({
    /// The ID of the Order.
    required String id,
    required RequestReturnOrdersReq userRequestReturnOrdersReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id/return',
        data: userRequestReturnOrdersReq.toJson(),
        queryParameters: queryParameters,
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

  /// Retrieves reservations for an Order
  @override
  Future<RetrieveOrderReservationsRes?> retrieveOrderReservations({
    /// The ID of the Order.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_orders/$id/reservations',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return RetrieveOrderReservationsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Order?> updateOrder({
    /// The ID of the Order.
    required String id,
    required UpdateOrderReq userUpdateOrderReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_orders/$id',
        data: userUpdateOrderReq.toJson(),
        queryParameters: queryParameters,
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
}
