import 'dart:developer';
import 'package:dio/dio.dart';

import '../../models/index.dart';
import '../../models/response_models/payment.dart';
import 'base_payment.dart';

class PaymentRepository extends BasePayment {
  PaymentRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  /// Captures a Payment.
  @override
  Future<Payment?> capturePayment({
    /// The ID of the Payment.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/payments/$id/capture',
      );
      if (response.statusCode == 200) {
        return Payment.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Issues a Refund.
  @override
  Future<UserCreateRefundPaymentRes?> createRefund({
    /// The ID of the Payment.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/payments/$id/capture',
      );
      if (response.statusCode == 200) {
        return UserCreateRefundPaymentRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves the Payment details
  @override
  Future<Payment?> retrievePaymentDetails({
    /// The ID of the Payment.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/payments/$id',
      );
      if (response.statusCode == 200) {
        return Payment.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
