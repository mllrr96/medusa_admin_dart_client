
import '../../models/index.dart';
import '../../models/response_models/payment.dart';

abstract class BasePayment {
  Future<Payment?> capturePayment({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<Payment?> retrievePaymentDetails({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserCreateRefundPaymentRes?> createRefund({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
