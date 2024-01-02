import 'dart:developer';
import 'package:dio/dio.dart';
import 'base_discount.dart';
import '../../models/index.dart';

class DiscountRepository extends BaseDiscount {
  DiscountRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _discounts = '/discounts';
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
        '$_discounts/$id/regions/$regionId',
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
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
        _discounts,
        data: userCreateDiscountReq.toJson(),
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
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
        '$_discounts/$id/dynamic-codes',
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
        '$_discounts/$id',
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
        '$_discounts/$id/dynamic-codes/$dynamicCode',
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
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
        '$_discounts/code/$code',
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
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
        '$_discounts/$id/regions/$regionId',
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
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
        '$_discounts/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
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
        _discounts,
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
        _discounts,
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
        '$_discounts/$id',
        data: userUpdateDiscountReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return Discount.fromJson(response.data['discount']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
