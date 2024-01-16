import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/index.dart';
import 'base_auth.dart';

class AuthRepository extends BaseAuth {
  AuthRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const String _auth = '/auth';
  /// Authenticates a user using email and password combination
  @override
  Future<User?> signIn({
    required UserPostAuthReq req,
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    _dio.options.connectTimeout = const Duration(seconds: 10);
    try {
      final response = await _dio.post(_auth, data: req);
      if (response.statusCode == 200) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String? cookie =
            response.headers['set-cookie']?.firstOrNull?.split(';').firstOrNull;
        if (cookie != null) {
          await prefs.setString('medusa_admin_cookie', cookie);
        }
        return User.fromJson(response.data['user']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves an authenticated session
  @override
  Future<User?> getSession({
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _auth
      );
      if (response.statusCode == 200) {
        return User.fromJson(response.data['user']);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
