import 'package:dio/dio.dart';
import 'base_return_reason.dart';
import '../../models/index.dart';

class ReturnReasonRepository extends BaseReturnReason {
  ReturnReasonRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  static const String _returnReasons = '/return-reasons';

  @override
  Future<ReturnReason?> create({
    required CreateReturnReasonReq userCreateReturnReasonReq,
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
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DeleteReturnReasonRes?>delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete('$_returnReasons/$id');
      if (response.statusCode == 200) {
        return DeleteReturnReasonRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

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
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<RetrieveAllReturnReasonRes?> retrieveAll({
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
        return RetrieveAllReturnReasonRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<ReturnReason?> update({
    required String id,
    required UpdateReturnReasonReq userUpdateReturnReasonReq,
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
    } catch (_) {

      rethrow;
    }
  }
}
