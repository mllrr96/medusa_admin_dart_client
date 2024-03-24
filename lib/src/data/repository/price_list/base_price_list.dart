import '../../models/index.dart';

abstract class BasePriceList {
  Future<PriceList?> createPriceList({
    required CreatePriceListReq userCreatePriceListReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<PriceList?> updatePriceList({
    required String id,
    required UpdatePriceListReq userUpdatePriceListReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<PriceList?> updatePrices({
    required String id,
    required UpdatePricesReq userUpdatePricesReq,
    Map<String, dynamic>? customHeaders,
  });

  Future<PriceListsRes?> retrievePriceLists({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<PriceListsProductsRes?> retrievePriceListProducts({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<PriceList?> retrievePriceList({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeletePricesRes?> deletePrices({
    required String id,
    required List<String> priceIds,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeletePriceListRes?> deletePriceList({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteProductPricesRes?> deleteProductPrices({
    required String id,
    required String productId,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteVariantPricesRes?> deleteVariantPrices({
    required String id,
    required String variantId,
    Map<String, dynamic>? customHeaders,
  });
}
