import 'dart:developer';
import '../../models/response_models/notification.dart';
import 'base_notification.dart';
import 'package:dio/dio.dart';
import '../../models/index.dart';

class NotificationRepository extends BaseNotification {
  NotificationRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  /// Resends a previously sent notifications, with the same data but optionally to a different address
  @override
  Future<Notification?> resendNotifications({
    /// The ID of the Notification
    required String id,

    /// A new address or user identifier that the Notification should be sent to
    required String to,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post('/notifications/$id/resend');
      if (response.statusCode == 200) {
        return Notification.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a list of Notifications.
  @override
  Future<UserRetrieveNotificationsRes?> retrieveNotifications({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/notifications',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserRetrieveNotificationsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
