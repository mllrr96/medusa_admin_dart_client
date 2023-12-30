
import '../../models/index.dart';
import '../../models/response_models/return_reason.dart';

abstract class BaseReturnReason {
  /// Creates a Return Reason
  Future<ReturnReason?> create({
    required UserCreateReturnReasonReq userCreateReturnReasonReq,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Return Reason
  Future<ReturnReason?> update(
      {required String id,
      required UserUpdateReturnReasonReq userUpdateReturnReasonReq,
      Map<String, dynamic>? queryParams,
      Map<String, dynamic>? customHeaders});

  /// Retrieves a Return Reason.
  Future<ReturnReason?> retrieve(
      {required String id, Map<String, dynamic>? queryParams, Map<String, dynamic>? customHeaders});

  /// Retrieves a Return Reason.
  Future<UserRetrieveAllReturnReasonRes?> retrieveAll(
      {Map<String, dynamic>? queryParams, Map<String, dynamic>? customHeaders});

  /// Deletes a return reason.
  Future<UserDeleteReturnReasonRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
