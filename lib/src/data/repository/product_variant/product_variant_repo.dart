import 'dart:developer';
import '../../models/index.dart';
import '../../models/response_models/product_variant.dart';
import 'base_product_variant.dart';
import 'package:dio/dio.dart';

class ProductVariantRepository extends BaseProductVariant {
  ProductVariantRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _variants = '/variants';
  @override
  Future<UserRetrieveProductVariantsRes?> retrieveProductVariants({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.get(_variants, queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return UserRetrieveProductVariantsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ProductVariant?> retrieveVariantInventory({
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get('$_variants/$id/inventory');
      if (response.statusCode == 200) {
        return ProductVariant.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
