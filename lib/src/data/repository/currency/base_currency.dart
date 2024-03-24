import '../../models/response_models/currency.dart';

abstract class BaseCurrency{
  Future<CurrencyRes?>  retrieve(
      {Map<String, dynamic>? customHeaders, Map<String, dynamic>? queryParameters});
}