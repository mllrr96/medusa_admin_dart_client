import 'dart:developer';

import 'package:dio/dio.dart';

import '../../models/index.dart';
import '../../models/response_models/product_tag.dart';
import 'base_product_tag.dart';

class ProductTagRepository extends BaseProductTag {
  ProductTagRepository(Dio dio) : _dio = dio;
  final Dio _dio;

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
        '/product-tags',
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

  @override
  Future<List<ProductTag>?> retrieveTagsUsageNumber({
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '/products/tag-usage',
      );
      if (response.statusCode == 200) {
        return List<ProductTag>.from(
            response.data.map((x) => ProductTag.fromJson(x)));
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
