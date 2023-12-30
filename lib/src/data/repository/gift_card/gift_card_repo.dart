import 'dart:developer';
import 'package:dio/dio.dart';
import '../../models/index.dart';
import '../../models/response_models/gift_card.dart';
import 'base_gift_card.dart';

class GiftCardRepository extends BaseGiftCard {
  GiftCardRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  /// Creates a Gift Card that can redeemed by its unique code. The Gift Card is only valid within 1 region.
  @override
  Future<GiftCard?> createGiftCard({
    required UserCreateGiftCardReq userCreateGiftCardReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/gift-cards',
        data: userCreateGiftCardReq.toJson(),
      );
      if (response.statusCode == 200) {
        return GiftCard.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Deletes a Gift Card
  @override
  Future<UserDeleteGiftCardRes?> deleteGiftCard({
    /// The ID of the Gift Card to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '/gift-cards/$id',
      );
      if (response.statusCode == 200) {
        return UserDeleteGiftCardRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a Gift Card.
  @override
  Future<GiftCard?> retrieveGiftCard({
    /// The ID of the Gift Card.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/gift-cards/$id',
      );
      if (response.statusCode == 200) {
        return GiftCard.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a list of Gift Cards.
  @override
  Future<UserGiftCardsRes?> retrieveGiftCards({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/gift-cards',
      );
      if (response.statusCode == 200) {
        return UserGiftCardsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Update a Gift Card that can redeemed by its unique code. The Gift Card is only valid within 1 region.
  @override
  Future<GiftCard?> updateGiftCard({
    /// The ID of the Gift Card.
    required String id,
    required UserUpdateGiftCardReq userUpdateGiftCardReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/gift-cards/$id',
        data: userUpdateGiftCardReq.toJson(),
      );
      if (response.statusCode == 200) {
        return GiftCard.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
