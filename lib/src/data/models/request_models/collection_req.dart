class CreateCollectionReq {
  CreateCollectionReq({required this.title, this.handle, this.metadata});

  String title;
  String? handle;
  Map<String, dynamic>? metadata;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    if (handle != null) {
      data['handle'] = handle;
    }

    if (metadata != null) {
      data['metadata'] = metadata;
    }
    return data;
  }
}

class CollectionRemoveProductsReq {
  /// The ID of the Collection.
  final String collectionId;

  /// An array of Product IDs to remove from the Product Collection.
  final List<String> productsIds;

  CollectionRemoveProductsReq(
      {required this.collectionId, required this.productsIds});
}

class CollectionUpdateProductsReq {
  /// The ID of the Collection.
  final String collectionId;

  /// An array of Product IDs to add to the Product Collection.
  final List<String> productsIds;

  CollectionUpdateProductsReq(
      {required this.collectionId, required this.productsIds});
}
