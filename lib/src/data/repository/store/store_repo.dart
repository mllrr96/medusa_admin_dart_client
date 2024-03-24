import 'package:dio/dio.dart';
import 'base_store.dart';
import '../../models/index.dart';

class StoreRepository extends BaseStore {
  StoreRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const String _store = '/store';

  @override
  Future<Store?> retrieve(
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(_store, queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return Store.fromJson(response.data['store']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Store?> update(
      {required StorePostReq storePostReq,
      Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(_store, data: storePostReq.toJson());
      if (response.statusCode == 200) {
        return Store.fromJson(response.data['store']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<List<PaymentProvider>?> retrievePaymentProviders({
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '$_store/payment-providers',
      );
      if (response.statusCode == 200) {
        return List<PaymentProvider>.from(
            response.data['payment_providers'].map((x) => PaymentProvider.fromJson(x)));
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<List<TaxProvider>?> retrieveTaxProviders({
    Map<String, dynamic>? customHeaders,
  }) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '$_store/tax-providers',
      );
      if (response.statusCode == 200) {
        return List<TaxProvider>.from(
            response.data['tax_providers'].map((x) => TaxProvider.fromJson(x)));
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Store?> addCurrencyCode(
      {required String code, Map<String, dynamic>? customHeaders}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.post(
        '$_store/currencies/$code',
      );
      if (response.statusCode == 200) {
        return Store.fromJson(response.data['store']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<Store?> removeCurrencyCode({required String code}) async {
    try {
      final response = await _dio.delete(
        '$_store/currencies/$code',
      );
      if (response.statusCode == 200) {
        return Store.fromJson(response.data['store']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
