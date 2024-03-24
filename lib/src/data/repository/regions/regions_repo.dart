import 'package:dio/dio.dart';
import 'base_regions.dart';
import '../../models/index.dart';

class RegionsRepository extends BaseRegions {
  RegionsRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _regions = '/regions';

  @override
  Future<RegionsRes?> retrieveAll(
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.get(_regions, queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return RegionsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> retrieve(
      {required String id,
      Map<String, dynamic>? queryParams,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.get('$_regions/$id', queryParameters: queryParams);
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> create(
      {required CreateRegionReq userCreateRegionReq,
      Map<String, dynamic>? queryParams,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(_regions,
          data: userCreateRegionReq.toJson(), queryParameters: queryParams);
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> addCountryToRegion(
      {required String id,
      required String countryCode,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio
          .post('$_regions/$id/countries', data: {'country_code': countryCode});
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> addFulfillmentProvider(
      {required String id,
      required String providerId,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post('$_regions/$id/fulfillment-providers',
          data: {'provider_id': providerId});
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> addPaymentProvider(
      {required String id,
      required String providerId,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post('$_regions/$id/payment-providers',
          data: {'provider_id': providerId});
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DeleteRegionRes?> delete(
      {required String id,
      Map<String, dynamic>? queryParams,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete('$_regions/$id');
      if (response.statusCode == 200) {
        return DeleteRegionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> deleteFulfillmentProvider(
      {required String id,
      required String providerId,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.delete('$_regions/$id/fulfillment-providers/$providerId');
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> deletePaymentProvider(
      {required String id,
      required String providerId,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.delete('$_regions/$id/payment-providers/$providerId');
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> removeCountryFromRegion(
      {required String id,
      required String countryCode,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.delete('$_regions/$id/countries/$countryCode');
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<List<FulfillmentOption>?> retrieveFulfillmentOptions(
      {required String id,
      Map<String, dynamic>? queryParams,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get('$_regions/$id/fulfillment-options');
      if (response.statusCode == 200) {
        return List<FulfillmentOption>.from(response.data['fulfillment_options']
            .map((x) => FulfillmentOption.fromJson(x)));
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Region?> update(
      {required String id,
      required UpdateRegionReq userUpdateRegionReq,
      Map<String, dynamic>? queryParams,
      Map<String, dynamic>? customHeaders}) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.post('$_regions/$id', data: userUpdateRegionReq.toJson());
      if (response.statusCode == 200) {
        return Region.fromJson(response.data['region']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
