import '../../models/index.dart';
import '../../models/response_models/product_tag.dart';

abstract class BaseProductTag{
  /// Retrieves a list of Product Tags with how many times each is used.
  Future<List<ProductTag>?> retrieveTagsUsageNumber({
    Map<String, dynamic>? customHeaders,
  });
  /// Retrieve a list of Product Tags.
  Future<UserRetrieveProductTagsRes?> retrieveProductTags({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

}