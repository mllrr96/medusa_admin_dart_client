
import '../../enum/enums.dart';
import '../../models/index.dart';
import '../../models/response_models/invite.dart';

abstract class BaseInvite {
  Future<bool?> acceptInvitation({
    required UserAcceptInvitationReq userAcceptInvitationReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<bool?> createInvitation({
    required String email,
    required UserRole role,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserRetrieveInvitesRes?> retrieveInvites({
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeleteInvitesRes?> deleteInvite({
    required String inviteId,
    Map<String, dynamic>? customHeaders,
  });

  Future<bool?> resendInvite({
    required String inviteId,
    Map<String, dynamic>? customHeaders,
  });
}
