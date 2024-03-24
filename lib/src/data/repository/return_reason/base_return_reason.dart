
import '../../models/index.dart';

abstract class BaseReturnReason {
  /// Creates a Return Reason
  Future<ReturnReason?> create({
    required CreateReturnReasonReq userCreateReturnReasonReq,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Return Reason
  Future<ReturnReason?> update(
      {required String id,
      required UpdateReturnReasonReq userUpdateReturnReasonReq,
      Map<String, dynamic>? queryParams,
      Map<String, dynamic>? customHeaders});

  /// Retrieves a Return Reason.
  Future<ReturnReason?> retrieve(
      {required String id, Map<String, dynamic>? queryParams, Map<String, dynamic>? customHeaders});

  /// Retrieves a Return Reason.
  Future<RetrieveAllReturnReasonRes?> retrieveAll(
      {Map<String, dynamic>? queryParams, Map<String, dynamic>? customHeaders});

  /// Deletes a return reason.
  Future<DeleteReturnReasonRes?> delete({
    required String id,
    Map<String, dynamic>? customHeaders,
  });
}
