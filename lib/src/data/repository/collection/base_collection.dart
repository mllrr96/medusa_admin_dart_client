import '../../models/index.dart';
import '../../models/response_models/collection.dart';

abstract class BaseCollection {
  /// Retrieve a list of Product Collection.
  Future<UserCollectionsRes?> retrieveAll({
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
    required UserCreateCollectionReq userCreateCollectionReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Updates a Product Collection.
  Future<ProductCollection?> update({
    required String id,
    required UserCreateCollectionReq userCreateCollectionReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Deletes a Product Collection.
  Future<UserDeleteCollectionRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates products associated with a Product Collection
  Future<ProductCollection?> updateProducts({
    required UserCollectionUpdateProductsReq userCollectionUpdateProductsReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Removes products associated with a Product Collection
  Future<UserCollectionRemoveProductsRes?> removeProducts({
    required UserCollectionRemoveProductsReq userCollectionRemoveProductsReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });
}
