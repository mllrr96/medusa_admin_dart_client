import 'package:dio/dio.dart';
import '../../models/response_models/currency.dart';
import 'base_currency.dart';


class CurrencyRepository extends BaseCurrency {
  CurrencyRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  @override
  Future<CurrencyRes?> retrieve(
      {Map<String, dynamic>? customHeaders, Map<String, dynamic>? queryParameters}) async {
    if (customHeaders != null) {
      _dio.options.headers.addAll(customHeaders);
    }
    try {
      final response = await _dio.get(
        '/currencies',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return CurrencyRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
