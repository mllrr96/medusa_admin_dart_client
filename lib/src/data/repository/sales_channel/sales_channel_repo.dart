import 'base_sales_channel.dart';
import 'package:dio/dio.dart';
import '../../models/index.dart';

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
        return SalesChannel.fromJson(response.data['sales_channel']);
      } else {
        throw response;
      }
    } catch (_) {
      
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
        return SalesChannel.fromJson(response.data['sales_channel']);
      } else {
        throw response;
      }
    } catch (_) {
      
      rethrow;
    }
  }

  @override
  Future<SalesChannel?> create({
    required SalesChannelCreateReq userSalesChannelCreateReq,
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
        return SalesChannel.fromJson(response.data['sales_channel']);
      } else {
        throw response;
      }
    } catch (_) {
      
      rethrow;
    }
  }

  @override
  Future<SalesChannelDeleteRes?> delete({
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
        return SalesChannelDeleteRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {
      
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
        return SalesChannel.fromJson(response.data['sales_channel']);
      } else {
        throw response;
      }
    } catch (_) {
      
      rethrow;
    }
  }

  @override
  Future<RemoveStockLocationFromSalesChannelRes?>
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
        return RemoveStockLocationFromSalesChannelRes.fromJson(
            response.data);
      } else {
        throw response;
      }
    } catch (_) {
      
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
        return SalesChannel.fromJson(response.data['sales_channel']);
      } else {
        throw response;
      }
    } catch (_) {
      
      rethrow;
    }
  }

  @override
  Future<SalesChannelRetrieveAllRes?> retrieveAll({
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
        return SalesChannelRetrieveAllRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {
      
      rethrow;
    }
  }

  @override
  Future<RetrieveStockLocationsRes?> retrieveStockLocations({
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
        return RetrieveStockLocationsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {
      
      rethrow;
    }
  }

  @override
  Future<SalesChannel?> update({
    required String id,
    required SalesChannelUpdateReq userSalesChannelUpdateReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_salesChannel/$id',
        data: userSalesChannelUpdateReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return SalesChannel.fromJson(response.data['sales_channel']);
      } else {
        throw response;
      }
    } catch (_) {
      
      rethrow;
    }
  }
}
