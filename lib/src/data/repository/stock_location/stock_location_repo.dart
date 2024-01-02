import 'dart:developer';
import 'package:dio/dio.dart';
import 'base_stock_location.dart';
import '../../models/index.dart';

class StockLocationRepository extends BaseStockLocation {
  StockLocationRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const String _stockLocation = '/stock-locations';

  @override
  Future<StockLocation?> createStockLocation(
      {required UserCreateStockLocationReq userCreateStockLocationReq,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(_stockLocation,
          data: userCreateStockLocationReq.toJson());
      if (response.statusCode == 200) {
        return StockLocation.fromJson(response.data['stock_location']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteStockLocationRes?> deleteStockLocation(
      {required String id,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete('$_stockLocation/$id');
      if (response.statusCode == 200) {
        return UserDeleteStockLocationRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<StockLocation?> retrieveStockLocation(
      {required String id,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_stockLocation/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return StockLocation.fromJson(response.data['stock_location']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<StockLocation?> updateStockLocation(
      {required String id,
        required UserUpdateStockLocationReq userUpdateStockLocationReq,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders,
      }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_stockLocation/$id',
        data: userUpdateStockLocationReq.toJson(),
      );
      if (response.statusCode == 200) {
        return StockLocation.fromJson(response.data['stock_location']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
