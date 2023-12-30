import '../../models/index.dart';
import '../../models/response_models/notification.dart';

abstract class BaseNotification {

  Future<UserRetrieveNotificationsRes?> retrieveNotifications({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
  Future<Notification?> resendNotifications({
    required String id,
    required String to,
    Map<String, dynamic>? customHeaders,
  });
}