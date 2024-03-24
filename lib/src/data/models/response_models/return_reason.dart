import '../index.dart';

class RetrieveAllReturnReasonRes {
  final List<ReturnReason>? returnReasons;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveAllReturnReasonRes(
      {this.returnReasons, this.limit, this.offset, this.count});
  factory RetrieveAllReturnReasonRes.fromJson(Map<String, dynamic> json) {
    return RetrieveAllReturnReasonRes(
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

class DeleteReturnReasonRes {
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

  const DeleteReturnReasonRes({this.id, this.object, this.deleted});
  factory DeleteReturnReasonRes.fromJson(Map<String, dynamic> json) {
    return DeleteReturnReasonRes(
      id: json['id'],
      object: json['object'],
      deleted: json['deleted'],
    );
  }
}
