import 'package:dio/dio.dart';
import 'base_reservation.dart';
import '../../models/index.dart';

class ReservationRepository extends BaseReservation {
  ReservationRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _reservations = '/reservations';

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
        _reservations,
        data: reservation.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Reservation.fromJson(response.data['reservation']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<DeleteReservationRes?> deleteReservation({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_reservations/$id',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return DeleteReservationRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

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
        '$_reservations/$id',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Reservation.fromJson(response.data['reservation']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Reservation?> updateReservation({
    required String id,
    required UpdateReservationReq userUpdateReservationReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_reservations/$id',
        data: userUpdateReservationReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Reservation.fromJson(response.data['reservation']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
