import '../../models/index.dart';
import '../../models/response_models/product_category.dart';

abstract class BaseProductCategory {
  /// Assign a batch of products to a product category.
  Future<ProductCategory?> addProductsToCategory({
    /// The ID of the Product Category.
    required String id,

    /// The IDs of the products to add to the Product Category
    required List<String> productIds,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Retrieves a Product Category.
  Future<ProductCategory?> retrieveProductCategory({
    /// The ID of the Product Category.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Updates a Product Category.
  Future<ProductCategory?> updateProductCategory({
    /// The ID of the Product Category.
    required String id,
    required UserUpdateProductCategoryReq userUpdateProductCategoryReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Remove a list of products from a product category.
  Future<ProductCategory?> deleteProductsFromCategory({
    /// The ID of the Product Category.
    required String id,

    /// The IDs of the products to delete from the Product Category.
    required List<String> productIds,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Deletes a ProductCategory.
  Future<UserDeleteProductCategoryRes?> deleteProductCategory({
    /// The ID of the Product Category.
    required String id,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Creates a Product Category.
  Future<ProductCategory?> createProductCategory({
    required UserCreateProductCategoryReq userCreateProductCategoryReq,
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Retrieve a list of product categories.
  Future<UserRetrieveProductCategoriesRes?> retrieveProductCategories({
    Map<String, dynamic>? customHeaders,
    Map<String, dynamic>? queryParameters,
  });
}
