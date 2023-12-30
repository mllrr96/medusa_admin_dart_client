import 'package:dio/dio.dart';

import '../../models/index.dart';
import 'base_claim.dart';

class ClaimRepository extends BaseClaim {
  ClaimRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  @override
  Future<Order?> cancelClaim(
      {required String id,
      required String claimId,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) {
    // TODO: implement cancelClaim
    throw UnimplementedError();
  }

  @override
  Future<Order?> createClaim(
      {required String id,
      required UserCreateClaimReq userCreateClaimReq,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) {
    // TODO: implement createClaim
    throw UnimplementedError();
  }

  @override
  Future<Order?> createClaimShipment(
      {required String id,
      required String claimId,
      required UserCreateClaimShipmentReq userCreateClaimShipmentReq,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) {
    // TODO: implement createClaimShipment
    throw UnimplementedError();
  }

  @override
  Future<Order?> updateClaim(
      {required String id,
      required String claimId,
      required UserUpdateClaimReq userUpdateClaimReq,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders}) {
    // TODO: implement updateClaim
    throw UnimplementedError();
  }
}
