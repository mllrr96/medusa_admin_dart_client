import 'base_notification.dart';
import 'package:dio/dio.dart';
import '../../models/index.dart';

class NotificationRepository extends BaseNotification {
  NotificationRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _notifications = '/notifications';

  /// Resends a previously sent notifications, with the same data but optionally to a different address
  @override
  Future<Notification?> resendNotifications({
    /// The ID of the Notification
    required String id,

    /// A new address or user identifier that the Notification should be sent to
    String? to,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post('$_notifications/$id/resend');
      if (response.statusCode == 200) {
        return Notification.fromJson(response.data['notification']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a list of Notifications.
  @override
  Future<RetrieveNotificationsRes?> retrieveNotifications({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _notifications,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return RetrieveNotificationsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
