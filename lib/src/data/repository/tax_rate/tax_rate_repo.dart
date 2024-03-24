import 'package:dio/dio.dart';
import 'base_tax_rate.dart';
import '../../models/index.dart';

class TaxRateRepository extends BaseTaxRate {
  TaxRateRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _taxRates = '/tax-rates';

  /// Associates a Tax Rate with a list of Products
  @override
  Future<TaxRate?> addTaxRateToProducts({
    /// ID of the tax rate.
    required String id,

    /// The IDs of the products to associate with this tax rate
    required List<String> productIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_taxRates/$id/products/batch',
        data: {'products': productIds},
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Associates a Tax Rate with a list of Product Types
  @override
  Future<TaxRate?> addTaxRateToProductType({
    /// ID of the tax rate.
    required String id,

    /// The IDs of the types of products to associate with this tax rate
    required List<String> productTypeIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_taxRates/$id/products/batch',
        data: {'product_types': productTypeIds},
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Associates a Tax Rate with a list of Shipping Options
  @override
  Future<TaxRate?> addTaxRateToShippingOptions({
    /// ID of the tax rate.
    required String id,

    /// The IDs of the shipping options to associate with this tax rate.
    required List<String> shippingOptionIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_taxRates/$id/products/batch',
        data: {'shipping_options': shippingOptionIds},
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Creates a Tax Rate
  @override
  Future<TaxRate?> createTaxRate({
    required CreateTaxRateReq userCreateTaxRateReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _taxRates,
        data: userCreateTaxRateReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Deletes a Tax Rate
  @override
  Future<DeleteTaxRateRes?> deleteTaxRate({
    /// The ID of the Tax Rate to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_taxRates/$id',
      );
      if (response.statusCode == 200) {
        return DeleteTaxRateRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Removes a Tax Rate from a list of Products
  @override
  Future<TaxRate?> removeTaxRateFromProduct({
    /// ID of the tax rate.
    required String id,

    /// The IDs of the products to remove association with this tax rate
    required List<String> productIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_taxRates/$id/products/batch',
        data: {'products': productIds},
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Removes a Tax Rate from a list of Product Types
  @override
  Future<TaxRate?> removeTaxRateToProductType({
    /// ID of the tax rate.
    required String id,

    /// The IDs of the types of products to remove association with this tax rate
    required List<String> productTypeIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_taxRates/$id/product-types/batch',
        data: {'product-types': productTypeIds},
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Removes a Tax Rate from a list of Shipping Options
  @override
  Future<TaxRate?> removeTaxRateToShippingOption({
    required String id,
    required List<String> shippingOptionIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_taxRates/$id/shipping_options/batch',
        data: {'shipping_options': shippingOptionIds},
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a TaxRate
  @override
  Future<TaxRate?> retrieveTaxRate({
    /// ID of the tax rate.
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_taxRates/$id',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a list of TaxRates
  @override
  Future<RetrieveTaxRatesRes?> retrieveTaxRates({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _taxRates,
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return RetrieveTaxRatesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates a Tax Rate
  @override
  Future<TaxRate?> updateTaxRate({
    /// ID of the tax rate.
    required String id,
    required UpdateTaxRateReq userUpdateTaxRateReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _taxRates,
        data: userUpdateTaxRateReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return TaxRate.fromJson(response.data['tax_rate']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
