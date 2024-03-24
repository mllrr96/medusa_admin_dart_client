import '../index.dart';

class RetrieveInvitesRes {
  final List<Invite>? invites;

  const RetrieveInvitesRes(this.invites);

 factory RetrieveInvitesRes.fromJson(Map<String, dynamic> json) {
    return RetrieveInvitesRes(
      json['invites'] != null
          ? List<Invite>.from(json['invites'].map((x) => Invite.fromJson(x)))
          : null,
    );
  }
}

class DeleteInvitesRes{
  /// The ID of the deleted Invite.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "invite"
  final String? object;

  /// Whether or not the Invite was deleted.
  final bool deleted;
  const DeleteInvitesRes({required this.deleted, this.id, this.object});
  factory DeleteInvitesRes.fromJson(json) {
    return DeleteInvitesRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}