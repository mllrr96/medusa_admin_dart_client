

import '../../models/index.dart';

abstract class BaseShippingProfile {
  Future<ShippingProfile?> create({
    required CreateShippingProfileReq userCreateShippingProfileReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<ShippingProfile?> update({
    required String id,
    required UpdateShippingProfileReq userUpdateShippingProfileReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<ShippingProfile?>  retrieve({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<RetrieveAllShippingProfileRes?> retrieveAll({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteShippingProfileRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
