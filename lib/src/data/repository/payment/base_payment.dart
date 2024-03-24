
import '../../models/index.dart';

abstract class BasePayment {
  Future<Payment?> capturePayment({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<Payment?> retrievePaymentDetails({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<CreateRefundPaymentRes?> createRefund({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
