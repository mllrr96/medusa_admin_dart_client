import 'dart:developer';

import '../../models/index.dart';
import '../../models/response_models/sales_channel_res.dart';
import 'base_sales_channel.dart';
import 'package:dio/dio.dart';

class SalesChannelRepository extends BaseSalesChannel {
  SalesChannelRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  static const String _salesChannel = '/sales-channels';
  @override
  Future<SalesChannel?> addProductsToSalesChannel({
    required String id,
    required List<String> productIds,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      var data = <Map<String, dynamic>>[];
      for (var id in productIds) {
        data.add({'id': id});
      }
      final response =
          await _dio.post('$_salesChannel/$id/products/batch', data: {
        'product_ids': data,
      });
      if (response.statusCode == 200) {
        return SalesChannel.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<SalesChannel?> associateStockLocationToSalesChannel({
    required String id,
    required String locationId,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response =
          await _dio.post('$_salesChannel/$id/stock-locations', data: {
        'location_id': locationId,
      });
      if (response.statusCode == 200) {
        return SalesChannel.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<SalesChannel?> create({
    required UserSalesChannelCreateReq userSalesChannelCreateReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        _salesChannel,
        data: userSalesChannelCreateReq.toJson(),
      );
      if (response.statusCode == 200) {
        return SalesChannel.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserSalesChannelDeleteRes?> delete({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '$_salesChannel/$id',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return UserSalesChannelDeleteRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<SalesChannel?> removeProductsFromSalesChannel({
    required String id,
    required List<String> productIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      var data = <Map<String, dynamic>>[];
      for (var id in productIds) {
        data.add({'id': id});
      }
      final response = await _dio.delete(
        '$_salesChannel/$id/products/batch',
        data: {
          'product_ids': data,
        },
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return SalesChannel.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserRemoveStockLocationFromSalesChannelRes?>
      removeStockLocationFromSalesChannel({
    required String id,
    required String locationId,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.delete(
        '$_salesChannel/$id/stock-locations',
        data: {
          'location_id': locationId,
        },
      );
      if (response.statusCode == 200) {
        return UserRemoveStockLocationFromSalesChannelRes.fromJson(
            response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<SalesChannel?> retrieve({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '$_salesChannel/$id',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return SalesChannel.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserSalesChannelRetrieveAllRes?> retrieveAll({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        _salesChannel,
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return UserSalesChannelRetrieveAllRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserRetrieveStockLocationsRes?> retrieveStockLocations({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '/stock-locations',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return UserRetrieveStockLocationsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<SalesChannel?> update({
    required String id,
    required UserSalesChannelUpdateReq userSalesChannelUpdateRes,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_salesChannel/$id',
        data: userSalesChannelUpdateRes.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return SalesChannel.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
