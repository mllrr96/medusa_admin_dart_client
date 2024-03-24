import 'package:dio/dio.dart';
import 'base_payment.dart';
import '../../models/index.dart';

class PaymentRepository extends BasePayment {
  PaymentRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _payments = '/payments';

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
        '$_payments/$id/capture',
      );
      if (response.statusCode == 200) {
        return Payment.fromJson(response.data['payment']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Issues a Refund.
  @override
  Future<CreateRefundPaymentRes?> createRefund({
    /// The ID of the Payment.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_payments/$id/capture',
      );
      if (response.statusCode == 200) {
        return CreateRefundPaymentRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

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
        '$_payments/$id',
      );
      if (response.statusCode == 200) {
        return Payment.fromJson(response.data['payment']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
