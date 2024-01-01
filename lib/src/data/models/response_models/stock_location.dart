class UserDeleteStockLocationRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount"
  final String? object;

  /// Whether the discount was deleted successfully or not.
  final bool deleted;

  const UserDeleteStockLocationRes({required this.deleted, this.id, this.object});

  factory UserDeleteStockLocationRes.fromJson(json) {
    return UserDeleteStockLocationRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}
