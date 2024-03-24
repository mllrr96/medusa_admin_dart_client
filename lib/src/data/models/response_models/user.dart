import '../index.dart';

class RetrieveUserListRes {
  final List<User>? userList;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveUserListRes(
      {this.userList, this.limit, this.offset, this.count});
  factory RetrieveUserListRes.fromJson(Map<String, dynamic> json) {
    return RetrieveUserListRes(
      userList: json['users'] != null
          ? List<User>.from(json['users'].map((x) => User.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class DeleteUserRes {
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

  const DeleteUserRes({this.id, this.object, this.deleted});
  factory DeleteUserRes.fromJson(Map<String, dynamic> json) {
    return DeleteUserRes(
      id: json['id'],
      object: json['object'],
      deleted: json['deleted'],
    );
  }
}
