
import '../../models/index.dart';

abstract class BaseShippingOptions {
  Future<ShippingOption?> create({
    required UserCreateShippingOptionReq userCreateShippingOptionReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<ShippingOption?>  update({
    required String id,
    required UserUpdateShippingOptionReq userUpdateShippingOptionReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<ShippingOption?>  retrieve(
      {required String id, Map<String, dynamic>? queryParams, Map<String, dynamic>? customHeaders});

  Future<UserRetrieveAllShippingOptionRes?> retrieveAll(
      {Map<String, dynamic>? queryParams, Map<String, dynamic>? customHeaders});

  Future<UserDeleteShippingOptionRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
