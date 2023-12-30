import '../index.dart';

class UserCreateReturnReasonRes {
  UserCreateReturnReasonRes({required this.returnReason});
  final ReturnReason returnReason;

  factory UserCreateReturnReasonRes.fromJson(Map<String, dynamic> json) =>
      UserCreateReturnReasonRes(
          returnReason: ReturnReason.fromJson(json['return_reason']));
}

class UserRetrieveReturnReasonRes {
  UserRetrieveReturnReasonRes({required this.returnReason});
  final ReturnReason returnReason;

  factory UserRetrieveReturnReasonRes.fromJson(Map<String, dynamic> json) =>
      UserRetrieveReturnReasonRes(
          returnReason: ReturnReason.fromJson(json['return_reason']));
}

class UserRetrieveAllReturnReasonRes {
  final List<ReturnReason>? returnReasons;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveAllReturnReasonRes(
      {this.returnReasons, this.limit, this.offset, this.count});
  factory UserRetrieveAllReturnReasonRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveAllReturnReasonRes(
      returnReasons: json['return_reasons'] != null
          ? List<ReturnReason>.from(
              json['return_reasons'].map((x) => ReturnReason.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserUpdateReturnReasonRes {
  UserUpdateReturnReasonRes({required this.returnReason});
  final ReturnReason returnReason;

  factory UserUpdateReturnReasonRes.fromJson(Map<String, dynamic> json) =>
      UserUpdateReturnReasonRes(
          returnReason: ReturnReason.fromJson(json['return_reason']));
}

class UserDeleteReturnReasonRes {
  /// The ID of the deleted user.
  String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "user"
  String? object;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  bool? deleted;

  UserDeleteReturnReasonRes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    deleted = json['deleted'];
  }
}
