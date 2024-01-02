import '../../models/index.dart';
import '../../models/response_models/product_tag.dart';

abstract class BaseProductTag{
  /// Retrieve a list of Product Tags.
  Future<UserRetrieveProductTagsRes?> retrieveProductTags({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });
}