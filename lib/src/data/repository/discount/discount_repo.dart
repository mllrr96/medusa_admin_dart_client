import 'dart:developer';
import 'package:dio/dio.dart';
import '../../models/index.dart';
import '../../models/response_models/discount.dart';
import 'base_discount.dart';

class DiscountRepository extends BaseDiscount {
  DiscountRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  @override
  Future<Discount?> addRegion({
    required String id,
    required String regionId,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '/discounts/$id/regions/$regionId',
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
  Future<Discount?> createDiscount(
      {required UserCreateDiscountReq userCreateDiscountReq,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '/discounts',
        data: userCreateDiscountReq.toJson(),
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
  Future<UserCreateDynamicCodeDiscountRes?> createDynamicCode({
    required String id,
    required UserCreateDynamicCodeDiscountReq userCreateDynamicCodeDiscountReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '/discounts/$id/dynamic-codes',
        data: userCreateDynamicCodeDiscountReq.toJson(),
      );
      if (response.statusCode == 200) {
        return UserCreateDynamicCodeDiscountRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteDiscountRes?> deleteDiscount({
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '/discounts/$id',
      );
      if (response.statusCode == 200) {
        return UserDeleteDiscountRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Discount?> deleteDynamicCode({
    required String id,
    required String dynamicCode,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '/discounts/$id/dynamic-codes/$dynamicCode',
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
  Future<Discount?> getDiscountByCode({
    required String code,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '/discounts/code/$code',
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
  Future<Discount?> removeRegion({
    required String id,
    required String regionId,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '/discounts/$id/regions/$regionId',
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
  Future<Discount?> retrieveDiscount({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '/discounts/$id',
        queryParameters: queryParameters,
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
  Future<UserRetrieveDiscountsRes?> retrieveDiscounts({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '/discounts',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserRetrieveDiscountsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserRetrieveDiscountsRes?> updateCondition({
    required String discountId,
    required String conditionId,
    required UserUpdateConditionDiscountReq userUpdateConditionDiscountReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '/discounts',
        data: userUpdateConditionDiscountReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserRetrieveDiscountsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Discount?> updateDiscount({
    required String id,
    required UserUpdateDiscountReq userUpdateDiscountReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '/discounts/$id',
        data: userUpdateDiscountReq.toJson(),
        queryParameters: queryParameters,
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
}
