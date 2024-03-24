import '../../models/index.dart';

abstract class BaseDiscount {

  /// Adds a Region to the list of Regions that a Discount can be used in.
  Future<Discount?> addRegion({
    /// The ID of the Discount.
    required String id,

    /// The ID of the Region.
    required String regionId,
    Map<String, dynamic>? customHeaders,
  });

  /// Removes a Region from the list of Regions that a Discount can be used in.
  Future<Discount?> removeRegion({
    /// The ID of the Discount.
    required String id,

    /// The ID of the Region.
    required String regionId,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a Discount with a given set of rules that define how the Discount behaves.
  Future<Discount?> createDiscount({
    required CreateDiscountReq userCreateDiscountReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Deletes a Discount.
  Future<DeleteDiscountRes?> deleteDiscount({
    /// The ID of the Discount.
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a Discount.
  Future<Discount?> retrieveDiscount({
    /// The ID of the Discount
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Discount with a given set of rules that define how the Discount behaves.
  Future<Discount?> updateDiscount({
    /// The ID of the Discount
    required String id,
    required UpdateDiscountReq userUpdateDiscountReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a list of Discounts
  Future<RetrieveDiscountsRes?> retrieveDiscounts({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a Discount by its discount code
  Future<Discount?> getDiscountByCode({
    /// The code of the Discount
    required String code,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a dynamic unique code that can map to a parent Discount.
  ///
  /// This is useful if you want to automatically generate codes with the same behaviour.
  Future<CreateDynamicCodeDiscountRes?> createDynamicCode({
    /// The ID of the Discount to create the dynamic code from.
    required String id,
    required CreateDynamicCodeDiscountReq userCreateDynamicCodeDiscountReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Deletes a dynamic code from a Discount.
  Future<Discount?> deleteDynamicCode({
    /// The ID of the Discount
    required String id,
    required String dynamicCode,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a DiscountCondition.
  ///
  /// Only one of products, product_types, product_collections, product_tags, and customer_groups should be provided.
  Future<RetrieveDiscountsRes?> updateCondition({
    /// The ID of the Product.
    required String discountId,

    /// The ID of the DiscountCondition.
    required String conditionId,

    /// Only one of products, product_types, product_collections, product_tags, and customer_groups should be provided.
    required UpdateConditionDiscountReq userUpdateConditionDiscountReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
