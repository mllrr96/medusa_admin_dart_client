

import '../../models/index.dart';
import '../../models/response_models/sales_channel_res.dart';

abstract class BaseSalesChannel {
  /// Retrieves a list of sales channels
  Future<UserSalesChannelRetrieveAllRes?> retrieveAll({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves the sales channel.
  Future<SalesChannel?> retrieve({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Assign a batch of product to a sales channel.
  Future<SalesChannel?> addProductsToSalesChannel({
    /// The ID of the Sales channel.
    required String id,

    /// The IDs of the products to add to the Sales Channel
    required List<String> productIds,
    Map<String, dynamic>? customHeaders,
  });

  /// Remove a list of products from a sales channel.
  Future<SalesChannel?> removeProductsFromSalesChannel({
    /// The ID of the Sales channel.
    required String id,

    /// The IDs of the products to delete from the Sales Channel.
    required List<String> productIds,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Associates a stock location to a Sales Channel.
  Future<SalesChannel?> associateStockLocationToSalesChannel({
    /// The ID of the Sales channel.
    required String id,
    /// The ID of the stock location
    required String locationId,
    Map<String, dynamic>? customHeaders,
  });

  /// Removes a stock location to a Sales Channel.
  Future<UserRemoveStockLocationFromSalesChannelRes?> removeStockLocationFromSalesChannel({
    /// The ID of the Sales channel.
    required String id,
    /// The ID of the stock location
    required String locationId,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Sales Channel.
  Future<SalesChannel?> update({
    required String id,
    required UserSalesChannelUpdateReq userSalesChannelUpdateRes,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a Sales Channel.
  Future<SalesChannel?> create({
    required  UserSalesChannelCreateReq userSalesChannelCreateReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Deletes the sales channel.
  Future<UserSalesChannelDeleteRes?> delete({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a list of stock locations
  Future<UserRetrieveStockLocationsRes?> retrieveStockLocations({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });
}
