import '../index.dart';

class StoreCollectionsRes {
  final ProductCollection? collection;
  const StoreCollectionsRes({required this.collection});
  factory StoreCollectionsRes.fromJson(Map<String, dynamic> json) {
    return StoreCollectionsRes(
      collection: json['collection'] != null
          ? ProductCollection.fromJson(json['collection'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (collection != null) {
      data['collection'] = collection?.toJson();
    }
    return data;
  }
}

class StoreCollectionsListRes {
  final List<ProductCollection>? collections;
  const StoreCollectionsListRes(this.collections);

  factory StoreCollectionsListRes.fromJson(json) {
    if (json['collections'] != null) {
      var collections = <ProductCollection>[];
      json['collections'].forEach((v) {
        collections.add(ProductCollection.fromJson(v));
      });
      return StoreCollectionsListRes(collections);
    }
    return const StoreCollectionsListRes(null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['collections'] = collections?.map((e) => e.toJson()).toList();
    return data;
  }
}
