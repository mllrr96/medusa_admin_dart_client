import 'dart:developer';
import 'package:dio/dio.dart';
import 'base_product_tag.dart';
import '../../models/index.dart';

class ProductTagRepository extends BaseProductTag {
  ProductTagRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _productTags = '/product-tags';

  @override
  Future<UserRetrieveProductTagsRes?> retrieveProductTags({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        _productTags,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserRetrieveProductTagsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

}
