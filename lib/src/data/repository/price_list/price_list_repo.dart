import 'package:dio/dio.dart';
import 'base_price_list.dart';
import '../../models/index.dart';

class PriceListRepository extends BasePriceList {
  PriceListRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _priceLists = '/price-lists';

  /// Creates a Price List
  @override
  Future<PriceList?> createPriceList({
    required CreatePriceListReq userCreatePriceListReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _priceLists,
        data: userCreatePriceListReq.toJson(),
      );
      if (response.statusCode == 200) {
        return PriceList.fromJson(response.data['price_list']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Deletes a Price List
  @override
  Future<DeletePriceListRes?> deletePriceList({
    /// The ID of the Price List to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_priceLists/$id',
      );
      if (response.statusCode == 200) {
        return DeletePriceListRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Batch delete prices that belong to a Price List
  @override
  Future<DeletePricesRes?> deletePrices({
    /// The ID of the Price List that the Money Amounts (Prices) that will be deleted belongs to.
    required String id,

    /// The price id's of the Money Amounts to delete.
    required List<String> priceIds,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_priceLists/$id/prices/batch',
        data: {
          'price_ids': priceIds,
        },
      );
      if (response.statusCode == 200) {
        return DeletePricesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Delete all the prices related to a specific product in a price list
  @override
  Future<DeleteProductPricesRes?> deleteProductPrices({
    /// The ID of the Price List that the Money Amounts that will be deleted belongs to.
    required String id,

    /// The ID of the product from which the money amount will be deleted.
    required String productId,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_priceLists/$id/products/$productId/prices',
      );
      if (response.statusCode == 200) {
        return DeleteProductPricesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Delete all the prices related to a specific variant in a price list
  @override
  Future<DeleteVariantPricesRes?> deleteVariantPrices({
    /// The ID of the Price List that the Money Amounts that will be deleted belongs to.
    required String id,

    /// The ID of the variant from which the money amount will be deleted.
    required String variantId,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_priceLists/$id/variants/$variantId/prices',
      );
      if (response.statusCode == 200) {
        return DeleteVariantPricesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a Price List.
  @override
  Future<PriceList?> retrievePriceList({
    /// The ID of the Price List.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_priceLists/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PriceList.fromJson(response.data['price_list']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a list of Product that are part of a Price List
  @override
  Future<PriceListsProductsRes?> retrievePriceListProducts({
    /// ID of the price list.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_priceLists/$id/products',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PriceListsProductsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a list of Price Lists.
  @override
  Future<PriceListsRes?> retrievePriceLists({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _priceLists,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return PriceListsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates a Price List
  @override
  Future<PriceList?> updatePriceList({
    /// The ID of the Price List.
    required String id,
    required UpdatePriceListReq userUpdatePriceListReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_priceLists/$id',
        data: userUpdatePriceListReq.toJson(),
      );
      if (response.statusCode == 200) {
        return PriceList.fromJson(response.data['price_list']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates a Price List
  @override
  Future<PriceList?> updatePrices({
    /// The ID of the Price List to update prices for.
    required String id,
    required UpdatePricesReq userUpdatePricesReq,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_priceLists/$id/prices/batch',
        data: userUpdatePricesReq.toJson(),
      );
      if (response.statusCode == 200) {
        return PriceList.fromJson(response.data['price_list']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
