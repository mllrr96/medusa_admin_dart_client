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
  Future<Order?> createClaimFulfillment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Claim.
    required String claimId,
    required CreateClaimFulfillmentReq userCreateClaimFulfillmentReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Cancel a claim's fulfillment and change its fulfillment status to canceled.
  Future<Order?> cancelClaimFulfillment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Claim.
    required String claimId,

    /// The id of the fulfillment.
    required String fulfillmentId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  ///
  /// Create a shipment for the claim and mark its fulfillment as shipped.
  ///
  /// This changes the claim's fulfillment status to either partially_shipped
  ///
  /// or shipped, depending on whether all the items were shipped.
  ///
  Future<Order?> shipClaimFulfillment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Claim.
    required String claimId,
    required ShipClaimFulfillmentReq shipClaimFulfillmentReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a Claim.
  Future<Order?> createClaim({
    /// The ID of the Order.
    required String id,
    required CreateClaimReq userCreateClaimReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Claim.
  Future<Order?> updateClaim({
    /// The ID of the Order.
    required String id,

    /// The ID of the Claim.
    required String claimId,
    required UpdateClaimReq userUpdateClaimReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
