import 'package:dio/dio.dart';
import 'base_product_type.dart';
import '../../models/response_models/product_type.dart';

class ProductTypeRepository extends BaseProductType {
  ProductTypeRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _productTypes = '/product-types';

  @override
  Future<RetrieveProductTypesRes?> retrieveProductTypes({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        _productTypes,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return RetrieveProductTypesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
