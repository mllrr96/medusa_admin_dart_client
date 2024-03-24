
import '../../models/index.dart';

abstract class BaseDiscountCondition {
  /// Add a batch of resources to a discount condition.
  Future<Discount?> addBatchResources({
    /// The ID of the Discount.
    required String discountId,

    /// The ID of the condition on which to add the item.
    required String conditionId,

    /// The ids of the items to be added to the discount condition
    required List<String> itemIds,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Delete a batch of resources from a discount condition.
  Future<Discount?> deleteBatchResources({
    /// The ID of the Discount.
    required String discountId,

    /// The ID of the condition on which to delete the item.
    required String conditionId,

    /// The ids of the items to be deleted to the discount condition
    required List<String> itemIds,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a DiscountCondition.
  ///
  /// Only one of products, product_types, product_collections, product_tags, and customer_groups should be provided.
  Future<Discount?> createDiscountCondition({
    /// The ID of the Discount.
    required String discountId,
    required CreateConditionReq userCreateConditionReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Only one of products, product_types, product_collections, product_tags, and customer_groups should be provided.
  Future<DiscountCondition?> retrieveDiscountCondition({
    /// The ID of the Discount.
    required String discountId,
    /// The ID of the DiscountCondition.
    required String conditionId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });


  /// Deletes a DiscountCondition
  Future<DeleteDiscountConditionRes?> deleteDiscountCondition({
    /// The ID of the Discount.
    required String discountId,
    /// The ID of the DiscountCondition.
    required String conditionId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
