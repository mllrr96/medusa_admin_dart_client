import '../../models/index.dart';

abstract class BaseOrders {
  Future<Order?> retrieveOrder({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> updateOrder({
    required String id,
    required UserUpdateOrderReq userUpdateOrderReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<UserRetrieveOrderReservationsRes?> retrieveOrderReservations({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> archiveOrder({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> cancelOrder({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> captureOrderPayment({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Reservation?> createReservationForLineItem({
    required String id,
    required String lineItemId,
    required String locationId,
    int? quantity,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> createOrderShipment({
    required String id,
    required String fulfillmentId,
    List<String>? trackingNumbers,
    bool? noNotification,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> completeOrder({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> addShippingMethod({
    required String id,
    required String optionId,
    required int price,
    dynamic data,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<UserRetrieveOrdersRes?> retrieveOrders({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> createRefund({
    required String id,
    required UserCreateRefundOrdersReq userCreateRefundOrdersReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Order?> requestReturn({
    required String id,
    required UserRequestReturnOrdersReq userRequestReturnOrdersReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });
}
