import '../../models/index.dart';

abstract class BaseReservation {
  /// Creates a Reservation which can be associated with any resource as required.
  Future<Reservation?> createReservation({
    required Reservation reservation,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Deletes a Reservation.
  Future<DeleteReservationRes?> deleteReservation({
    /// The ID of the Reservation to delete.
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Deletes a Reservation.
  Future<Reservation?> retrieveReservation({
    /// The ID of the reservation to retrieve.
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Reservation which can be associated with any resource as required.
  Future<Reservation?>  updateReservation({
    /// The ID of the reservation to retrieve.
    required String id,
    required UpdateReservationReq userUpdateReservationReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });
}
