import '../index.dart';

class UserRetrieveUserListRes {
  final List<User>? userList;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveUserListRes(
      {this.userList, this.limit, this.offset, this.count});
  factory UserRetrieveUserListRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveUserListRes(
      userList: json['users'] != null
          ? List<User>.from(json['users'].map((x) => User.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserDeleteUserRes {
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

  const UserDeleteUserRes({this.id, this.object, this.deleted});
  factory UserDeleteUserRes.fromJson(Map<String, dynamic> json) {
    return UserDeleteUserRes(
      id: json['id'],
      object: json['object'],
      deleted: json['deleted'],
    );
  }
}
