import '../../models/index.dart';

abstract class BaseAuth {
  Future<User?> signIn({required PostAuthReq req, Map<String, dynamic>? customHeaders});
  Future<String?> signInCookie({required PostAuthReq req, Map<String, dynamic>? customHeaders});
  Future<String?> signInJWT({required PostAuthReq req, Map<String, dynamic>? customHeaders});
  Future<bool?> signOut({Map<String, dynamic>? customHeaders});
  Future<User?> getCurrentUser({Map<String, dynamic>? customHeaders});
}
