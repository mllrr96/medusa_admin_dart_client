import 'dart:developer';
import '../../enum/enums.dart';
import '../../models/index.dart';
import '../../models/response_models/invite.dart';
import 'base_invite.dart';
import 'package:dio/dio.dart';

class InviteRepository extends BaseInvite {
  InviteRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  /// Accepts an Invite and creates a corresponding user
  @override
  Future<bool?> acceptInvitation({
    required UserAcceptInvitationReq userAcceptInvitationReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/invites/accept',
        data: userAcceptInvitationReq.toJson(),
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/invites',
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
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Deletes an Invite
  @override
  Future<UserDeleteInvitesRes?> deleteInvite({
    /// The ID of the Invite to delete.
    required String inviteId,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '/invites/$inviteId',
      );
      if (response.statusCode == 200) {
        return UserDeleteInvitesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/invites/$inviteId/resend',
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Lists all Invites
  @override
  Future<UserRetrieveInvitesRes?> retrieveInvites({
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/invites',
      );
      if (response.statusCode == 200) {
        return UserRetrieveInvitesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
