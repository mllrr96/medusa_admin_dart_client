import '../../models/index.dart';
import '../../models/response_models/user.dart';

abstract class BaseUser {
  /// Updates a User
  Future<User?> update({
    required String id,
    required UserUpdateUserReq userUpdateUserReq,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a User.
  Future<User?> retrieve(
      {required String id, Map<String, dynamic>? customHeaders});

  /// Creates a User
  Future<User?> create({
    required UserCreateUserReq userCreateUserReq,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves all users.
  Future<UserRetrieveUserListRes?> retrieveAll(
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters});

  /// Generates a password token for a User with a given email.
  Future<bool?> requestPasswordReset(
      {required String email, Map<String, dynamic>? customHeaders});

  /// Sets the password for a User given the correct token.
  Future<User?> resetPassword({
    required UserResetPasswordReq userResetPasswordReq,
    Map<String, dynamic>? customHeaders,
  });

  /// Generates a password token for a User with a given email.
  Future<UserDeleteUserRes?> delete(
      {required String id, Map<String, dynamic>? customHeaders});
}
