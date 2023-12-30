import 'dart:developer';
import '../../models/response_models/notification.dart';
import '../../models/response_models/payment_collection.dart';
import '../../models/store_models/payment_collection/index.dart';
import 'base_payment_collection.dart';import 'package:dio/dio.dart';

class PaymentCollectionRepository extends BasePaymentCollection {
  PaymentCollectionRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  /// Deletes a Payment Collection
  @override
  Future<UserDeletePaymentCollectionRes?> deletePaymentCollection({
    /// The ID of the PaymentCollection to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '/payment-collections/$id',
      );
      if (response.statusCode == 200) {
        return UserDeletePaymentCollectionRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Sets the status of PaymentCollection as Authorized.
  @override
  Future<UserRetrieveNotificationsRes?> markPaymentCollectionAuthorized({
    /// The ID of the PaymentCollection.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
         '/payment-collections/$id/authorize',
      );
      if (response.statusCode == 200) {
        return UserRetrieveNotificationsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a PaymentCollection.
  @override
  Future<PaymentCollection?> retrievePaymentCollection({
    /// The ID of the PaymentCollection.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
         '/payment-collections/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PaymentCollection.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Updates a PaymentCollection.
  @override
  Future<UserRetrieveNotificationsRes?> updatePaymentCollection({
    /// The ID of the PaymentCollection.
    required String id,

    /// An optional description to create or update the payment collection.
    String? description,

    /// An optional set of key-value pairs to hold additional information.
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post( '/payment-collections/$id', data: {
        if (metadata != null) 'metadata': metadata,
        if (description != null) 'description': description,
      });
      if (response.statusCode == 200) {
        return UserRetrieveNotificationsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
