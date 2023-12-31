import 'dart:developer';
import 'package:dio/dio.dart';
import '../../models/index.dart';
import 'base_collection.dart';

class CollectionRepository extends BaseCollection {
  CollectionRepository(Dio dio) : _dio = dio;
  final Dio _dio;
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
      final response = await _dio.get('/store/collections/$id');
      if (response.statusCode == 200) {
        return ProductCollection.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserCollectionsRes?> retrieveAll({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '/collections',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserCollectionsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ProductCollection?> create({
    required UserCreateCollectionReq userCreateCollectionReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '/collections',
        data: userCreateCollectionReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCollection.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ProductCollection?> update({
    required String id,
    required UserCreateCollectionReq userCreateCollectionReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '/collections/$id',
        data: userCreateCollectionReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCollection.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ProductCollection?> updateProducts({
    required UserCollectionUpdateProductsReq userCollectionUpdateProductsReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '/collections/${userCollectionUpdateProductsReq.collectionId}/products/batch',
        data: {'product_ids': userCollectionUpdateProductsReq.productsIds},
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCollection.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserCollectionRemoveProductsRes?> removeProducts({
    required UserCollectionRemoveProductsReq userCollectionRemoveProductsReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '/collections/${userCollectionRemoveProductsReq.collectionId}/products/batch',
        data: {'product_ids': userCollectionRemoveProductsReq.productsIds},
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserCollectionRemoveProductsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteCollectionRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete('/collections/$id');
      if (response.statusCode == 200) {
        return UserDeleteCollectionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
