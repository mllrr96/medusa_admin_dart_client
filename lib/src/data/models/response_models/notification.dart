import '../index.dart';

class UserRetrieveNotificationsRes {
  final List<Notification>? notifications;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveNotificationsRes(
      {this.notifications, this.limit, this.offset, this.count});
  factory UserRetrieveNotificationsRes.fromJson(Map<String, dynamic> json) {

    return UserRetrieveNotificationsRes(
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

class UserNotificationsRes {
  final Notification? notification;

  UserNotificationsRes(this.notification);

  factory UserNotificationsRes.fromJson(Map<String, dynamic> json) {
    return UserNotificationsRes(json['notification'] != null
        ? Notification.fromJson(json['notification'])
        : null);
  }
}
