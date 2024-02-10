

import '../../models/index.dart';

abstract class BaseShippingProfile {
  Future<ShippingProfile?> create({
    required UserCreateShippingProfileReq userCreateShippingProfileReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<ShippingProfile?> update({
    required String id,
    required UserUpdateShippingProfileReq userUpdateShippingProfileReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<ShippingProfile?>  retrieve({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserRetrieveAllShippingProfileRes?> retrieveAll({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeleteShippingProfileRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
