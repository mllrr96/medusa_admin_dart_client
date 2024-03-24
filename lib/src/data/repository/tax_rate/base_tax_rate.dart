import '../../models/index.dart';

abstract class BaseTaxRate {
  Future<TaxRate?> createTaxRate({
    required CreateTaxRateReq userCreateTaxRateReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<RetrieveTaxRatesRes?> retrieveTaxRates({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<TaxRate?> retrieveTaxRate({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<TaxRate?> updateTaxRate({
    required String id,
    required UpdateTaxRateReq userUpdateTaxRateReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteTaxRateRes?> deleteTaxRate({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<TaxRate?> addTaxRateToProductType({
    required String id,
    required List<String> productTypeIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<TaxRate?> removeTaxRateToProductType({
    required String id,
    required List<String> productTypeIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<TaxRate?> addTaxRateToProducts({
    required String id,
    required List<String> productIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<TaxRate?> removeTaxRateFromProduct({
    required String id,
    required List<String> productIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<TaxRate?> addTaxRateToShippingOptions({
    required String id,
    required List<String> shippingOptionIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  Future<TaxRate?> removeTaxRateToShippingOption({
    /// ID of the tax rate.
    required String id,

    /// The IDs of the shipping options to remove association with this tax rate.
    required List<String> shippingOptionIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });
}
