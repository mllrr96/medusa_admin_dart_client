class DeletePaymentCollectionRes {
  /// The ID of the deleted Payment Collection.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "payment_collection"
  final String? object;

  /// Whether or not the Payment Collection was deleted.
  final bool deleted;

  const DeletePaymentCollectionRes({required this.deleted, this.id, this.object});

  factory DeletePaymentCollectionRes.fromJson(json) {
    return DeletePaymentCollectionRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}
