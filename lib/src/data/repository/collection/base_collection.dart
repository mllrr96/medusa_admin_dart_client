import '../../models/index.dart';

abstract class BaseCollection {
  /// Retrieve a list of Product Collection.
  Future<CollectionsRes?> retrieveAll({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Retrieves a Product Collection.
  Future<ProductCollection?> retrieve({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Creates a Product Collection.
  Future<ProductCollection?> create({
    required CreateCollectionReq userCreateCollectionReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Updates a Product Collection.
  Future<ProductCollection?> update({
    required String id,
    required CreateCollectionReq userCreateCollectionReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Deletes a Product Collection.
  Future<DeleteCollectionRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates products associated with a Product Collection
  Future<ProductCollection?> updateProducts({
    required CollectionUpdateProductsReq userCollectionUpdateProductsReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Removes products associated with a Product Collection
  Future<CollectionRemoveProductsRes?> removeProducts({
    required CollectionRemoveProductsReq userCollectionRemoveProductsReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });
}
