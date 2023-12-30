import 'dart:developer';
import 'package:dio/dio.dart';

import '../../models/index.dart';
import '../../models/response_models/publishable_api_keys.dart';
import '../../models/response_models/sales_channel_res.dart';
import 'base_publishable_api_key.dart';

class PublishableApiKeyRepository extends BasePublishableApiKey {
  PublishableApiKeyRepository(Dio dio) : _dio = dio;
  final Dio _dio;

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
        '/publishable-api-keys/$id/sales-channels/batch',
        data: {
          'sales_channel_ids': data,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/publishable-api-keys',
        data: {
          'title': title,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<PublishableApiKey?> deletePublishableApiKey({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '/publishable-api-keys/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeletePublishableApiKeyRes?> deleteSalesChannels({
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
        '/publishable-api-keys/$id/sales-channels/batch',
        data: {
          'sales_channel_ids': data,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserDeletePublishableApiKeyRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/publishable-api-keys/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserRetrievePublishableApiKeysRes?> retrievePublishableApiKeys({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/publishable-api-keys',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserRetrievePublishableApiKeysRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserSalesChannelRetrieveAllRes?>
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
        '/publishable-api-keys/$id/sales-channels',
        queryParameters: queryParameters,
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
        '/publishable-api-keys/$id/revoke',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/publishable-api-keys/$id',
        data: {
          'title': title,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PublishableApiKey.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
