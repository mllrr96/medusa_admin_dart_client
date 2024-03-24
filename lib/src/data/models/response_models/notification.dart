import '../index.dart';

class RetrieveNotificationsRes {
  final List<Notification>? notifications;
  final int? limit;
  final int? offset;
  final int? count;
  const  RetrieveNotificationsRes(
      {this.notifications, this.limit, this.offset, this.count});
  factory RetrieveNotificationsRes.fromJson(Map<String, dynamic> json) {

    return RetrieveNotificationsRes(
      notifications: json['notifications'] != null
          ? List<Notification>.from(
              json['notifications'].map((x) => Notification.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}