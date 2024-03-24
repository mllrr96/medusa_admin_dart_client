class DeleteReservationRes {
  /// The ID of the deleted Reservation.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "reservation"
  final String? object;

  /// Whether or not the Reservation was deleted.
  final bool deleted;

  const DeleteReservationRes({required this.deleted, this.id, this.object});

  factory DeleteReservationRes.fromJson(json) {
    return DeleteReservationRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}
