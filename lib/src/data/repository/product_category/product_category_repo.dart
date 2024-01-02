import 'dart:developer';
import 'base_product_category.dart';
import 'package:dio/dio.dart';
import '../../models/index.dart';

class ProductCategoryRepository extends BaseProductCategory {
  ProductCategoryRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _productCategories = '/product-categories';

  @override
  Future<ProductCategory?> addProductsToCategory({
    required String id,
    required List<String> productIds,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_productCategories/$id/products/batch',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCategory.fromJson(response.data['product_category']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ProductCategory?> createProductCategory({
    required UserCreateProductCategoryReq userCreateProductCategoryReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _productCategories,
        data: userCreateProductCategoryReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCategory.fromJson(response.data['product_category']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteProductCategoryRes?> deleteProductCategory({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_productCategories/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserDeleteProductCategoryRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ProductCategory?> deleteProductsFromCategory({
    required String id,
    required List<String> productIds,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_productCategories/$id/products/batch',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCategory.fromJson(response.data['product_category']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserRetrieveProductCategoriesRes?> retrieveProductCategories({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _productCategories,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserRetrieveProductCategoriesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ProductCategory?> retrieveProductCategory({
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_productCategories/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCategory.fromJson(response.data['product_category']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ProductCategory?> updateProductCategory({
    required String id,
    required UserUpdateProductCategoryReq userUpdateProductCategoryReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_productCategories/$id',
        data: userUpdateProductCategoryReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductCategory.fromJson(response.data['product_category']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
