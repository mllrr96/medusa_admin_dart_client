import '../../models/index.dart';

abstract class BaseClaim {
  /// Cancels an OrderEdit.
  Future<Order?> cancelClaim({
    /// The ID of the Order.
    required String id,

    /// The ID of the Claim.
    required String claimId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Registers a Claim Fulfillment as shipped.
  Future<Order?> createClaimShipment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Claim.
    required String claimId,
    required UserCreateClaimShipmentReq userCreateClaimShipmentReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a Claim.
  Future<Order?> createClaim({
    /// The ID of the Order.
    required String id,
    required UserCreateClaimReq userCreateClaimReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Claim.
  Future<Order?> updateClaim({
    /// The ID of the Order.
    required String id,

    /// The ID of the Claim.
    required String claimId,
    required UserUpdateClaimReq userUpdateClaimReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
