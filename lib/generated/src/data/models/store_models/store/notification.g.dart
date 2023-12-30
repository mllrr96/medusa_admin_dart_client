// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/notification.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NotificationCWProxy {
  Notification id(String? id);

  Notification eventName(String? eventName);

  Notification resourceType(String? resourceType);

  Notification resourceId(String? resourceId);

  Notification customerId(String? customerId);

  Notification customer(Customer? customer);

  Notification to(String? to);

  Notification data(Map<String, dynamic>? data);

  Notification resends(List<NotificationResend>? resends);

  Notification providerId(String? providerId);

  Notification provider(NotificationProvider? provider);

  Notification createdAt(DateTime? createdAt);

  Notification updatedAt(DateTime? updatedAt);

  Notification parentId(String? parentId);

  Notification parentNotification(Notification? parentNotification);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Notification(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Notification(...).copyWith(id: 12, name: "My name")
  /// ````
  Notification call({
    String? id,
    String? eventName,
    String? resourceType,
    String? resourceId,
    String? customerId,
    Customer? customer,
    String? to,
    Map<String, dynamic>? data,
    List<NotificationResend>? resends,
    String? providerId,
    NotificationProvider? provider,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? parentId,
    Notification? parentNotification,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNotification.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNotification.copyWith.fieldName(...)`
class _$NotificationCWProxyImpl implements _$NotificationCWProxy {
  const _$NotificationCWProxyImpl(this._value);

  final Notification _value;

  @override
  Notification id(String? id) => this(id: id);

  @override
  Notification eventName(String? eventName) => this(eventName: eventName);

  @override
  Notification resourceType(String? resourceType) =>
      this(resourceType: resourceType);

  @override
  Notification resourceId(String? resourceId) => this(resourceId: resourceId);

  @override
  Notification customerId(String? customerId) => this(customerId: customerId);

  @override
  Notification customer(Customer? customer) => this(customer: customer);

  @override
  Notification to(String? to) => this(to: to);

  @override
  Notification data(Map<String, dynamic>? data) => this(data: data);

  @override
  Notification resends(List<NotificationResend>? resends) =>
      this(resends: resends);

  @override
  Notification providerId(String? providerId) => this(providerId: providerId);

  @override
  Notification provider(NotificationProvider? provider) =>
      this(provider: provider);

  @override
  Notification createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Notification updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  Notification parentId(String? parentId) => this(parentId: parentId);

  @override
  Notification parentNotification(Notification? parentNotification) =>
      this(parentNotification: parentNotification);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Notification(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Notification(...).copyWith(id: 12, name: "My name")
  /// ````
  Notification call({
    Object? id = const $CopyWithPlaceholder(),
    Object? eventName = const $CopyWithPlaceholder(),
    Object? resourceType = const $CopyWithPlaceholder(),
    Object? resourceId = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? customer = const $CopyWithPlaceholder(),
    Object? to = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? resends = const $CopyWithPlaceholder(),
    Object? providerId = const $CopyWithPlaceholder(),
    Object? provider = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? parentId = const $CopyWithPlaceholder(),
    Object? parentNotification = const $CopyWithPlaceholder(),
  }) {
    return Notification(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      eventName: eventName == const $CopyWithPlaceholder()
          ? _value.eventName
          // ignore: cast_nullable_to_non_nullable
          : eventName as String?,
      resourceType: resourceType == const $CopyWithPlaceholder()
          ? _value.resourceType
          // ignore: cast_nullable_to_non_nullable
          : resourceType as String?,
      resourceId: resourceId == const $CopyWithPlaceholder()
          ? _value.resourceId
          // ignore: cast_nullable_to_non_nullable
          : resourceId as String?,
      customerId: customerId == const $CopyWithPlaceholder()
          ? _value.customerId
          // ignore: cast_nullable_to_non_nullable
          : customerId as String?,
      customer: customer == const $CopyWithPlaceholder()
          ? _value.customer
          // ignore: cast_nullable_to_non_nullable
          : customer as Customer?,
      to: to == const $CopyWithPlaceholder()
          ? _value.to
          // ignore: cast_nullable_to_non_nullable
          : to as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Map<String, dynamic>?,
      resends: resends == const $CopyWithPlaceholder()
          ? _value.resends
          // ignore: cast_nullable_to_non_nullable
          : resends as List<NotificationResend>?,
      providerId: providerId == const $CopyWithPlaceholder()
          ? _value.providerId
          // ignore: cast_nullable_to_non_nullable
          : providerId as String?,
      provider: provider == const $CopyWithPlaceholder()
          ? _value.provider
          // ignore: cast_nullable_to_non_nullable
          : provider as NotificationProvider?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      parentId: parentId == const $CopyWithPlaceholder()
          ? _value.parentId
          // ignore: cast_nullable_to_non_nullable
          : parentId as String?,
      parentNotification: parentNotification == const $CopyWithPlaceholder()
          ? _value.parentNotification
          // ignore: cast_nullable_to_non_nullable
          : parentNotification as Notification?,
    );
  }
}

extension $NotificationCopyWith on Notification {
  /// Returns a callable class that can be used as follows: `instanceOfNotification.copyWith(...)` or like so:`instanceOfNotification.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NotificationCWProxy get copyWith => _$NotificationCWProxyImpl(this);
}
