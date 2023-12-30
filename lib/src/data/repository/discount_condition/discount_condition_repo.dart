import 'dart:developer';
import 'package:dio/dio.dart';

import '../../models/index.dart';
import '../../models/response_models/discount_condition.dart';
import 'base_discount_condition.dart';

class DiscountConditionRepository extends BaseDiscountCondition {
  DiscountConditionRepository(Dio dio) : _dio = dio;
  final Dio _dio;

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
        '/discounts/$discountId/conditions/$conditionId/batch',
        data: {
          'resources': itemIds,
        },
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Discount?> createDiscountCondition({
    required String discountId,
    required UserCreateConditionReq userCreateConditionReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/discounts/$discountId/conditions',
        data: userCreateConditionReq.toJson(),
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/discounts/$discountId/conditions/$conditionId/batch',
        data: {
          'resources': itemIds,
        },
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteDiscountConditionRes?> deleteDiscountCondition({
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
        '/discounts/$discountId/conditions/$conditionId',
      );
      if (response.statusCode == 200) {
        return UserDeleteDiscountConditionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/discounts/$discountId/conditions/$conditionId',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return DiscountCondition.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
