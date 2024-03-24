import '../../models/index.dart';

abstract class BaseUser {
  /// Updates a User
  Future<User?> update({
    required String id,
    required UpdateUserReq userUpdateUserReq,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a User.
  Future<User?> retrieve(
      {required String id, Map<String, dynamic>? customHeaders});

  /// Creates a User
  Future<User?> create({
    required CreateUserReq userCreateUserReq,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves all users.
  Future<RetrieveUserListRes?> retrieveAll(
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters});

  /// Generates a password token for a User with a given email.
  Future<bool?> requestPasswordReset(
      {required String email, Map<String, dynamic>? customHeaders});

  /// Sets the password for a User given the correct token.
  Future<User?> resetPassword({
    required ResetPasswordReq userResetPasswordReq,
    Map<String, dynamic>? customHeaders,
  });

  /// Generates a password token for a User with a given email.
  Future<DeleteUserRes?> delete(
      {required String id, Map<String, dynamic>? customHeaders});
}
