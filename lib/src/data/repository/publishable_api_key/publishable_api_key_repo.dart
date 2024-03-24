import 'package:dio/dio.dart';
import 'base_publishable_api_key.dart';
import '../../models/index.dart';

class PublishableApiKeyRepository extends BasePublishableApiKey {
  PublishableApiKeyRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _apiKey = '/publishable-api-keys';

  @override
  Future<PublishableApiKey?> addSalesChannels({
    required String id,
    required List<String> salesChannelsIds,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      var data = <Map<String, dynamic>>[];
      for (var id in salesChannelsIds) {
        data.add({'id': id});
      }
      final response = await _dio.post(
        '$_apiKey/$id/sales-channels/batch',
        data: {
          'sales_channel_ids': data,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data['publishable_api_key']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<PublishableApiKey?> createPublishableApiKey({
    required String title,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _apiKey,
        data: {
          'title': title,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data['publishable_api_key']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DeletePublishableApiKeyRes?> deletePublishableApiKey({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_apiKey/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return DeletePublishableApiKeyRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<PublishableApiKey?> deleteSalesChannels({
    required String id,
    required List<String> salesChannelsIds,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      var data = <Map<String, dynamic>>[];
      for (var id in salesChannelsIds) {
        data.add({'id': id});
      }
      final response = await _dio.delete(
        '$_apiKey/$id/sales-channels/batch',
        data: {
          'sales_channel_ids': data,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data['publishable_api_key']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<PublishableApiKey?> retrievePublishableApiKey({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_apiKey/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data['publishable_api_key']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<RetrievePublishableApiKeysRes?> retrievePublishableApiKeys({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _apiKey,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return RetrievePublishableApiKeysRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<SalesChannelRetrieveAllRes?>
  retrieveSalesChannels({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_apiKey/$id/sales-channels',
        queryParameters: queryParameters,
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
  Future<PublishableApiKey?> revokePublishableApiKey({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_apiKey/$id/revoke',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data['publishable_api_key']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<PublishableApiKey?> updatePublishableApiKey({
    required String id,
    String? title,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_apiKey/$id',
        data: {
          'title': title,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data['publishable_api_key']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
