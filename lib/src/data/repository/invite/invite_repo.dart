import 'base_invite.dart';
import 'package:dio/dio.dart';
import '../../enum/enums.dart';
import '../../models/index.dart';

class InviteRepository extends BaseInvite {
  InviteRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const String _invites = '/invites';

  /// Accepts an Invite and creates a corresponding user
  @override
  Future<bool?> acceptInvitation({
    required AcceptInvitationReq userAcceptInvitationReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_invites/accept',
        data: userAcceptInvitationReq.toJson(),
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Creates an Invite and triggers an 'invite' created event
  @override
  Future<bool?> createInvitation({
    /// The email for the user to be created.
    required String email,

    /// The role of the user to be created.
    required UserRole role,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _invites,
        data: {
          'user': email,
          'role': role.value,
        },
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Deletes an Invite
  @override
  Future<DeleteInvitesRes?> deleteInvite({
    /// The ID of the Invite to delete.
    required String inviteId,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_invites/$inviteId',
      );
      if (response.statusCode == 200) {
        return DeleteInvitesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Resends an Invite by triggering the 'invite' created event again
  @override
  Future<bool?> resendInvite({
    /// The ID of the Invite to delete.
    required String inviteId,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_invites/$inviteId/resend',
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Lists all Invites
  @override
  Future<RetrieveInvitesRes?> retrieveInvites({
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _invites,
      );
      if (response.statusCode == 200) {
        return RetrieveInvitesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
