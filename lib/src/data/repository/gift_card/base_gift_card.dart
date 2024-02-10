import '../../models/index.dart';

abstract class BaseGiftCard {
  Future<GiftCard?> createGiftCard({
    required UserCreateGiftCardReq userCreateGiftCardReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeleteGiftCardRes?> deleteGiftCard({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserGiftCardsRes?> retrieveGiftCards({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<GiftCard?> retrieveGiftCard({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<GiftCard?> updateGiftCard({
    required String id,
    required UserUpdateGiftCardReq userUpdateGiftCardReq,
    Map<String, dynamic>? customHeaders,
  });
}
