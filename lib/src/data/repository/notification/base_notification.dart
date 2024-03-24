import '../../models/index.dart';

abstract class BaseNotification {

  Future<RetrieveNotificationsRes?> retrieveNotifications({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
  Future<Notification?> resendNotifications({
    required String id,
    required String to,
    Map<String, dynamic>? customHeaders,
  });
}