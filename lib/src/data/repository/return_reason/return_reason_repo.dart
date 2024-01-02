import 'dart:developer';
import 'package:dio/dio.dart';
import 'base_return_reason.dart';
import '../../models/index.dart';

class ReturnReasonRepository extends BaseReturnReason {
  ReturnReasonRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  static const String _returnReasons = '/return-reasons';

  @override
  Future<ReturnReason?> create({
    required UserCreateReturnReasonReq userCreateReturnReasonReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        _returnReasons,
        data: userCreateReturnReasonReq.toJson(),
      );
      if (response.statusCode == 200) {
        return ReturnReason.fromJson(response.data['return_reason']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteReturnReasonRes?>delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete('$_returnReasons/$id');
      if (response.statusCode == 200) {
        return UserDeleteReturnReasonRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ReturnReason?>retrieve({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        _returnReasons,
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return ReturnReason.fromJson(response.data['return_reason']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserRetrieveAllReturnReasonRes?> retrieveAll({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        _returnReasons,
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return UserRetrieveAllReturnReasonRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ReturnReason?> update({
    required String id,
    required UserUpdateReturnReasonReq userUpdateReturnReasonReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_returnReasons/$id',
        data: userUpdateReturnReasonReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return ReturnReason.fromJson(response.data['return_reason']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
