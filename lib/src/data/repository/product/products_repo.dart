import 'dart:developer';
import 'package:dio/dio.dart';

import '../../models/index.dart';
import '../../models/response_models/products.dart';
import 'base_products.dart';

class ProductsRepository extends BaseProducts {
  ProductsRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  /// Retrieves a list of products
  @override
  Future<UserProductsListRes?> retrieveAll(
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/products',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserProductsListRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a single Product
  @override
  Future<Product?> retrieve(String id,
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.get('/products/$id', queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a list of Product Variants
  @override
  Future<List<ProductVariant>?> retrieveVariants(
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.get('/variants', queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return List<ProductVariant>.from(
            response.data.map((i) => ProductVariant.fromJson(i)));
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Searches for products
  @override
  Future<UserPostSearchRes?> search(
      {StorePostSearchReq? req, Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post('/products/search', data: req);
      if (response.statusCode == 200) {
        return UserPostSearchRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Product?> add(
      {required UserPostProductReq userPostProductReq,
      Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response =
          await _dio.post('/products', data: userPostProductReq.toJson());
      if (response.statusCode == 200) {
        return Product.fromJson(response.data['product']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteProductRes?> delete(
      {required String id, Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete('/products/$id');
      if (response.statusCode == 200) {
        return UserDeleteProductRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Product?> update(
      {required UserPostUpdateProductReq userPostUpdateProductReq,
      required String id,
      Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post('/products/$id',
          data: userPostUpdateProductReq.toJson());
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
