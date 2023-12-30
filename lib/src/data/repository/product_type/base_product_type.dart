
import '../../models/response_models/product_type.dart';

abstract class BaseProductType{
  /// Retrieve a list of Product Types.
  Future<UserRetrieveProductTypesRes?> retrieveProductTypes({
    Map<String, dynamic>? customHeaders,
  });
}