import 'dart:developer';
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
    required UserCreatePriceListReq userCreatePriceListReq,
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
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Deletes a Price List
  @override
  Future<UserDeletePriceListRes?> deletePriceList({
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
        return UserDeletePriceListRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Batch delete prices that belong to a Price List
  @override
  Future<UserDeletePricesRes?> deletePrices({
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
        return UserDeletePricesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Delete all the prices related to a specific product in a price list
  @override
  Future<UserDeleteProductPricesRes?> deleteProductPrices({
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
        return UserDeleteProductPricesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Delete all the prices related to a specific variant in a price list
  @override
  Future<UserDeleteVariantPricesRes?> deleteVariantPrices({
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
        return UserDeleteVariantPricesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a list of Product that are part of a Price List
  @override
  Future<UserPriceListsProductsRes?> retrievePriceListProducts({
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
        return UserPriceListsProductsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Retrieves a list of Price Lists.
  @override
  Future<UserPriceListsRes?> retrievePriceLists({
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
        return UserPriceListsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Updates a Price List
  @override
  Future<PriceList?> updatePriceList({
    /// The ID of the Price List.
    required String id,
    required UserUpdatePriceListReq userUpdatePriceListReq,
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
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Updates a Price List
  @override
  Future<PriceList?> updatePrices({
    /// The ID of the Price List to update prices for.
    required String id,
    required UserUpdatePricesReq userUpdatePricesReq,
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
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
