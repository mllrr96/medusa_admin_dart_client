import 'dart:developer';
import 'package:dio/dio.dart';

import '../../models/index.dart';
import '../../models/response_models/reservation.dart';
import 'base_reservation.dart';

class ReservationRepository extends BaseReservation {
  ReservationRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  @override
  Future<Reservation?> createReservation({
    required Reservation reservation,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/reservations',
        data: reservation.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Reservation.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<UserDeleteReservationRes?> deleteReservation({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '/reservations/$id',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return UserDeleteReservationRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Reservation?> retrieveReservation({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/reservations/$id',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Reservation.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Reservation?> updateReservation({
    required String id,
    required UserUpdateReservationReq userUpdateReservationReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/reservations/$id',
        data: userUpdateReservationReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Reservation.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
