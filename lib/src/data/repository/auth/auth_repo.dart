import 'package:dio/dio.dart';
import '../../models/index.dart';
import 'base_auth.dart';

class AuthRepository extends BaseAuth {
  AuthRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const String _auth = '/auth';

  /// Authenticates a user using email and password combination and returns a user object.
  @override
  Future<User?> signIn({
    required PostAuthReq req,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    _dio.options.connectTimeout = const Duration(seconds: 10);
    try {
      final response = await _dio.post(_auth, data: req);
      if (response.statusCode == 200) {
        return User.fromJson(response.data['user']);
      } else {
        throw response;
      }
    } catch (_) {
      rethrow;
    }
  }

  /// Authenticates a user using email and password combination and returns a JWT token.
  @override
  Future<String?> signInJWT(
      {required PostAuthReq req,
      Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    _dio.options.connectTimeout = const Duration(seconds: 10);
    try {
      final response = await _dio.post('$_auth/token', data: req);
      if (response.statusCode == 200) {
        return response.data['access_token'];
      } else {
        throw response;
      }
    } catch (_) {
      rethrow;
    }
  }

  /// Authenticates a user using email and password combination and returns a cookie.
  @override
  Future<String?> signInCookie({
    required PostAuthReq req,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    _dio.options.connectTimeout = const Duration(seconds: 10);
    try {
      final response = await _dio.post(_auth, data: req);
      if (response.statusCode == 200) {
        return response.headers['set-cookie']?.firstOrNull
            ?.split(';')
            .firstOrNull;
      } else {
        throw response;
      }
    } catch (_) {
      rethrow;
    }
  }

  /// Removes authentication session and sign out
  @override
  Future<bool?> signOut({
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(_auth);
      if (response.statusCode == 200) {
        return true;
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves an authenticated session
  @override
  Future<User?> getCurrentUser({
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(_auth);
      if (response.statusCode == 200) {
        return User.fromJson(response.data['user']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
