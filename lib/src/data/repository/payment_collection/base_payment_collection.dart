import '../../models/response_models/notification.dart';
import '../../models/response_models/payment_collection.dart';
import '../../models/store_models/payment_collection/index.dart';

abstract class BasePaymentCollection {
  Future<PaymentCollection?> retrievePaymentCollection({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeletePaymentCollectionRes?> deletePaymentCollection({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<RetrieveNotificationsRes?> updatePaymentCollection({
    required String id,

    String? description,
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? customHeaders,
  });

  Future<RetrieveNotificationsRes?> markPaymentCollectionAuthorized({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
