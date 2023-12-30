import '../../models/index.dart';

abstract class BaseStore {
  Future<Store?> retrieve({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<Store?> update({
    required StorePostReq storePostReq,
    Map<String, dynamic>? customHeaders,
  });
  Future<Store?> addCurrencyCode({
    /// The 3 character iso currency code.
    required String code,
    Map<String, dynamic>? customHeaders,
  });

  Future<Store?> removeCurrencyCode({
    /// The 3 character iso currency code.
    required String code,
  });

  /// Retrieves the configured Payment Providers
  Future<List<PaymentProvider>?> retrievePaymentProviders({
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves the configured Payment Providers
  Future<List<TaxProvider>?> retrieveTaxProviders({
    Map<String, dynamic>? customHeaders,
  });
}
