import 'package:dio/dio.dart';
import 'base_discount_condition.dart';
import '../../models/index.dart';

class DiscountConditionRepository extends BaseDiscountCondition {
  DiscountConditionRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _discounts = '/discounts';
  static const _conditions = '/conditions';
  @override
  Future<Discount?> addBatchResources({
    required String discountId,
    required String conditionId,
    required List<String> itemIds,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_discounts/$discountId$_conditions/$conditionId/batch',
        data: {
          'resources': itemIds,
        },
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Discount?> createDiscountCondition({
    required String discountId,
    required CreateConditionReq userCreateConditionReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_discounts/$discountId$_conditions',
        data: userCreateConditionReq.toJson(),
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Discount?> deleteBatchResources({
    required String discountId,
    required String conditionId,
    required List<String> itemIds,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_discounts/$discountId$_conditions/$conditionId/batch',
        data: {
          'resources': itemIds,
        },
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DeleteDiscountConditionRes?> deleteDiscountCondition({
    required String discountId,
    required String conditionId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_discounts/$discountId$_conditions/$conditionId',
      );
      if (response.statusCode == 200) {
        return DeleteDiscountConditionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DiscountCondition?> retrieveDiscountCondition({
    required String discountId,
    required String conditionId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_discounts/$discountId$_conditions/$conditionId',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return DiscountCondition.fromJson(response.data['discount_condition']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
