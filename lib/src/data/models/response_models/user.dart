import '../index.dart';

class UserUpdateUserRes {
  User? user;

  UserUpdateUserRes.fromJson(Map<String, dynamic> json) {
    if (json['user'] != null) {
      user = User.fromJson(json['user']);
    }
  }
}

class UserRetrieveUserRes {
  User? user;

  UserRetrieveUserRes.fromJson(Map<String, dynamic> json) {
    if (json['user'] != null) {
      user = User.fromJson(json['user']);
    }
  }
}

class UserResetPasswordRes {
  User? user;

  UserResetPasswordRes.fromJson(Map<String, dynamic> json) {
    if (json['user'] != null) {
      user = User.fromJson(json['user']);
    }
  }
}

class UserCreateUserRes {
  User? user;

  UserCreateUserRes.fromJson(Map<String, dynamic> json) {
    if (json['user'] != null) {
      user = User.fromJson(json['user']);
    }
  }
}

class UserRetrieveUserListRes {
  final List<User>? userList;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveUserListRes({this.userList, this.limit, this.offset, this.count});
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
  String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "user"
  String? object;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  bool? deleted;

  UserDeleteUserRes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    deleted = json['deleted'];
  }
}
