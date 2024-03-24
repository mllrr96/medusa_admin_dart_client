

import '../../models/index.dart';

abstract class BaseInventoryItems {
  Future<InventoryItem?> createInventoryLocationForInventoryItem({
    required String id,
    required CreateInventoryLocationForInventoryItemReq userCreateInventoryLocationForInventoryItemReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<StockLevelsOfLocationRes?> listStockLevelsOfLocation({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<InventoryItem?> retrieveInventoryItem({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
  Future<DeleteInventoryItemRes?> deleteInventoryItem({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<InventoryItemsRes?> retrieveInventoryItems({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  Future<InventoryItem?> updateInventoryItem({
    required String id,
    required UpdateInventoryItemReq userUpdateInventoryItemReq,
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
