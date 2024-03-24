class DeleteFileRes {
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
  DeleteFileRes({this.id, this.object, this.deleted});

  factory DeleteFileRes.fromJson(Map<String, dynamic> json) {
    return DeleteFileRes(id: json['id'], deleted: json['deleted'] ?? false, object: json['object']);
  }
}
