
import '../../models/index.dart';

abstract class BaseShippingOptions {
  Future<ShippingOption?> create({
    required CreateShippingOptionReq userCreateShippingOptionReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<ShippingOption?>  update({
    required String id,
    required UpdateShippingOptionReq userUpdateShippingOptionReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<ShippingOption?>  retrieve(
      {required String id, Map<String, dynamic>? queryParams, Map<String, dynamic>? customHeaders});

  Future<RetrieveAllShippingOptionRes?> retrieveAll(
      {Map<String, dynamic>? queryParams, Map<String, dynamic>? customHeaders});

  Future<DeleteShippingOptionRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
