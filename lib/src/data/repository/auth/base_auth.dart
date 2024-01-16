import '../../models/index.dart';

abstract class BaseAuth {
  Future<User?> signIn({required UserPostAuthReq req, Map<String, dynamic>? customHeaders});
  Future<bool?> signOut({Map<String, dynamic>? customHeaders});
  Future<User?> getSession({Map<String, dynamic>? customHeaders});
}
