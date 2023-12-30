import '../../models/index.dart';
import '../../models/response_models/price_list.dart';

abstract class BasePriceList {
  Future<PriceList?> createPriceList({
    required UserCreatePriceListReq userCreatePriceListReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<PriceList?> updatePriceList({
    required String id,
    required UserUpdatePriceListReq userUpdatePriceListReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<PriceList?> updatePrices({
    required String id,
    required UserUpdatePricesReq userUpdatePricesReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserPriceListsRes?> retrievePriceLists({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserPriceListsProductsRes?> retrievePriceListProducts({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<PriceList?> retrievePriceList({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeletePricesRes?> deletePrices({
    required String id,
    required List<String> priceIds,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeletePriceListRes?> deletePriceList({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeleteProductPricesRes?> deleteProductPrices({
    required String id,
    required String productId,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeleteVariantPricesRes?> deleteVariantPrices({
    required String id,
    required String variantId,
    Map<String, dynamic>? customHeaders,
  });
}
