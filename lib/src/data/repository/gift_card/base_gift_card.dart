import '../../models/index.dart';

abstract class BaseGiftCard {
  Future<GiftCard?> createGiftCard({
    required CreateGiftCardReq userCreateGiftCardReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteGiftCardRes?> deleteGiftCard({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<GiftCardsRes?> retrieveGiftCards({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<GiftCard?> retrieveGiftCard({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<GiftCard?> updateGiftCard({
    required String id,
    required UpdateGiftCardReq userUpdateGiftCardReq,
    Map<String, dynamic>? customHeaders,
  });
}
