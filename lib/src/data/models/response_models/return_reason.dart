import '../index.dart';

class UserRetrieveAllReturnReasonRes {
  final List<ReturnReason>? returnReasons;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveAllReturnReasonRes(
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

class UserDeleteReturnReasonRes {
  /// The ID of the deleted user.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "user"
  final String? object;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  final bool? deleted;

  const UserDeleteReturnReasonRes({this.id, this.object, this.deleted});
  factory UserDeleteReturnReasonRes.fromJson(Map<String, dynamic> json) {
    return UserDeleteReturnReasonRes(
      id: json['id'],
      object: json['object'],
      deleted: json['deleted'],
    );
  }
}
