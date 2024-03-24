import 'base_product_variant.dart';
import 'package:dio/dio.dart';
import '../../models/index.dart';

class ProductVariantRepository extends BaseProductVariant {
  ProductVariantRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _variants = '/variants';
  @override
  Future<RetrieveProductVariantsRes?> retrieveProductVariants({
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
        return RetrieveProductVariantsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

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
        return ProductVariant.fromJson(response.data['product_variant']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
