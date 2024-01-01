import '../index.dart';

class UserRetrieveInvitesRes {
  final List<Invite>? invites;

  const UserRetrieveInvitesRes(this.invites);

 factory UserRetrieveInvitesRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveInvitesRes(
      json['invites'] != null
          ? List<Invite>.from(json['invites'].map((x) => Invite.fromJson(x)))
          : null,
    );
  }
}

class UserDeleteInvitesRes{
  /// The ID of the deleted Invite.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "invite"
  final String? object;

  /// Whether or not the Invite was deleted.
  final bool deleted;
  const UserDeleteInvitesRes({required this.deleted, this.id, this.object});
  factory UserDeleteInvitesRes.fromJson(json) {
    return UserDeleteInvitesRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}