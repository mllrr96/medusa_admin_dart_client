class UserDeleteFileRes {
  /// The file key of the upload deleted
  final String? id;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  final bool? deleted;

  /// The type of the object that was deleted.
  ///
  /// Default: "file"
  final String? object;
  UserDeleteFileRes({this.id, this.object, this.deleted});

  factory UserDeleteFileRes.fromJson(Map<String, dynamic> json) {
    return UserDeleteFileRes(id: json['id'], deleted: json['deleted'] ?? false, object: json['object']);
  }
}
