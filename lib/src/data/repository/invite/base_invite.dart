
import '../../enum/enums.dart';
import '../../models/index.dart';

abstract class BaseInvite {
  Future<bool?> acceptInvitation({
    required AcceptInvitationReq userAcceptInvitationReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<bool?> createInvitation({
    required String email,
    required UserRole role,
    Map<String, dynamic>? customHeaders,
  });

  Future<RetrieveInvitesRes?> retrieveInvites({
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteInvitesRes?> deleteInvite({
    required String inviteId,
    Map<String, dynamic>? customHeaders,
  });

  Future<bool?> resendInvite({
    required String inviteId,
    Map<String, dynamic>? customHeaders,
  });
}
