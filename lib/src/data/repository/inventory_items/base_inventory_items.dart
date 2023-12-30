

import '../../models/index.dart';
import '../../models/response_models/inventory_items.dart';

abstract class BaseInventoryItems {
  Future<InventoryItem?> createInventoryLocationForInventoryItem({
    required String id,
    required UserCreateInventoryLocationForInventoryItemReq userCreateInventoryLocationForInventoryItemReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserStockLevelsOfLocationRes?> listStockLevelsOfLocation({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<InventoryItem?> retrieveInventoryItem({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
  Future<UserDeleteInventoryItemRes?> deleteInventoryItem({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserInventoryItemsRes?> retrieveInventoryItems({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<InventoryItem?> updateInventoryItem({
    required String id,
    required UserUpdateInventoryItemReq userUpdateInventoryItemReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<InventoryItem?> deleteLocationLevelOfInventoryItem({
    required String id,
    required String locationId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<InventoryItem?> updateLocationLevelOfInventoryItem({
    required String id,
    required String locationId,
    int? stockedQuantity,
    int? incomingQuantity,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
