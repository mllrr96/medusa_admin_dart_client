class DeleteStockLocationRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount"
  final String? object;

  /// Whether the discount was deleted successfully or not.
  final bool deleted;

  const DeleteStockLocationRes({required this.deleted, this.id, this.object});

  factory DeleteStockLocationRes.fromJson(json) {
    return DeleteStockLocationRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}
