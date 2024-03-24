import 'package:dio/dio.dart';
import 'base_inventory_items.dart';
import '../../models/index.dart';

class InventoryItemsRepository extends BaseInventoryItems {
  InventoryItemsRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const String _inventory = '/inventory-items';

  /// Creates an Inventory Location Level for a given Inventory Item.
  @override
  Future<InventoryItem?> createInventoryLocationForInventoryItem({
    /// The ID of the Inventory Item.
    required String id,
    required CreateInventoryLocationForInventoryItemReq
        userCreateInventoryLocationForInventoryItemReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_inventory/$id/location-levels',
        data: userCreateInventoryLocationForInventoryItemReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data['inventory_item']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Delete an Inventory Item
  @override
  Future<DeleteInventoryItemRes?> deleteInventoryItem({
    /// The ID of the Inventory Item to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete('$_inventory/$id');
      if (response.statusCode == 200) {
        return DeleteInventoryItemRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Delete a location level of an Inventory Item.
  @override
  Future<InventoryItem?> deleteLocationLevelOfInventoryItem({
    /// The ID of the Inventory Item.
    required String id,

    /// The ID of the location.
    required String locationId,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_inventory/$id/location-levels/$locationId',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data['inventory_item']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Lists stock levels of a given location.
  @override
  Future<StockLevelsOfLocationRes?> listStockLevelsOfLocation({
    /// The ID of the Inventory Item.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_inventory/$id/location-levels',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return StockLevelsOfLocationRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves an Inventory Item.
  @override
  Future<InventoryItem?> retrieveInventoryItem({
    /// The ID of the Inventory Item.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_inventory/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data['inventory_item']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Lists inventory items.
  @override
  Future<InventoryItemsRes?> retrieveInventoryItems({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _inventory,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItemsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates an Inventory Item.
  @override
  Future<InventoryItem?> updateInventoryItem({
    /// The ID of the Inventory Item.
    required String id,
    required UpdateInventoryItemReq userUpdateInventoryItemReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        _inventory,
        data: userUpdateInventoryItemReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data['inventory_item']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates an Inventory Location Level for a given Inventory Item.
  @override
  Future<InventoryItem?> updateLocationLevelOfInventoryItem({
    /// The ID of the Inventory Item.
    required String id,

    /// The ID of the location.
    required String locationId,

    /// the total stock quantity of an inventory item at the given location ID
    int? stockedQuantity,

    /// the incoming stock quantity of an inventory item at the given location ID
    int? incomingQuantity,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_inventory/$id/location-levels/$locationId',
        data: {
          if (stockedQuantity != null) 'stocked_quantity': stockedQuantity,
          if (incomingQuantity != null) 'incoming_quantity': incomingQuantity,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data['inventory_item']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
