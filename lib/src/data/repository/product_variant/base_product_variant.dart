import '../../models/index.dart';
import '../../models/response_models/product_variant.dart';

abstract class BaseProductVariant {
  /// Returns the available inventory of a Variant.
  Future<ProductVariant?> retrieveVariantInventory({
    /// The Product Variant id to get inventory for.
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a list of Product Variants
  Future<UserRetrieveProductVariantsRes?> retrieveProductVariants({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
