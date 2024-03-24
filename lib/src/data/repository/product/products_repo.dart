import 'package:dio/dio.dart';
import 'base_products.dart';
import '../../models/index.dart';

class ProductsRepository extends BaseProducts {
  ProductsRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _products = '/products';

  /// Retrieves a list of products
  @override
  Future<ProductsListRes?> retrieveAll(
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _products,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return ProductsListRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

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
          await _dio.get('$_products/$id', queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return Product.fromJson(response.data['product']);
      } else {
        throw response;
      }
    } catch (_) {

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
            response.data['variants'].map((i) => ProductVariant.fromJson(i)));
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Searches for products
  @override
  Future<PostSearchRes?> search(
      {PostSearchReq? req, Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post('$_products/search', data: req);
      if (response.statusCode == 200) {
        return PostSearchRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Product?> add(
      {required PostProductReq userPostProductReq,
      Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response =
          await _dio.post(_products, data: userPostProductReq.toJson());
      if (response.statusCode == 200) {
        return Product.fromJson(response.data['product']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DeleteProductRes?> delete(
      {required String id, Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete('$_products/$id');
      if (response.statusCode == 200) {
        return DeleteProductRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Product?> update(
      {required PostUpdateProductReq userPostUpdateProductReq,
      required String id,
      Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post('$_products/$id',
          data: userPostUpdateProductReq.toJson());
      if (response.statusCode == 200) {
        return Product.fromJson(response.data['product']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
