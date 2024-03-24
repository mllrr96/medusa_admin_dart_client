import 'package:dio/dio.dart';
import '../../models/index.dart';
import 'base_collection.dart';

class CollectionRepository extends BaseCollection {
  CollectionRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _collections = '/collections';

  @override
  Future<ProductCollection?> retrieve({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get('$_collections/$id');
      if (response.statusCode == 200) {
        return ProductCollection.fromJson(response.data['collection']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<CollectionsRes?> retrieveAll({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        _collections,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CollectionsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<ProductCollection?> create({
    required CreateCollectionReq userCreateCollectionReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        _collections,
        data: userCreateCollectionReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCollection.fromJson(response.data['collection']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<ProductCollection?> update({
    required String id,
    required CreateCollectionReq userCreateCollectionReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_collections/$id',
        data: userCreateCollectionReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCollection.fromJson(response.data['collection']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<ProductCollection?> updateProducts({
    required CollectionUpdateProductsReq userCollectionUpdateProductsReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_collections/${userCollectionUpdateProductsReq.collectionId}/products/batch',
        data: {'product_ids': userCollectionUpdateProductsReq.productsIds},
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCollection.fromJson(response.data['collection']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<CollectionRemoveProductsRes?> removeProducts({
    required CollectionRemoveProductsReq userCollectionRemoveProductsReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '$_collections/${userCollectionRemoveProductsReq.collectionId}/products/batch',
        data: {'product_ids': userCollectionRemoveProductsReq.productsIds},
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CollectionRemoveProductsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DeleteCollectionRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete('$_collections/$id');
      if (response.statusCode == 200) {
        return DeleteCollectionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
