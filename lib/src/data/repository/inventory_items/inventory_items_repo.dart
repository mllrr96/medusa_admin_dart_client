import 'dart:developer';
import 'package:dio/dio.dart';
import '../../models/index.dart';
import '../../models/response_models/inventory_items.dart';
import 'base_inventory_items.dart';

class InventoryItemsRepository extends BaseInventoryItems {
  InventoryItemsRepository(Dio dio) : _dio = dio;
  final Dio _dio;

  /// Creates an Inventory Location Level for a given Inventory Item.
  @override
  Future<InventoryItem?> createInventoryLocationForInventoryItem({
    /// The ID of the Inventory Item.
    required String id,
    required UserCreateInventoryLocationForInventoryItemReq
        userCreateInventoryLocationForInventoryItemReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/inventory-items/$id/location-levels',
        data: userCreateInventoryLocationForInventoryItemReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Delete an Inventory Item
  @override
  Future<UserDeleteInventoryItemRes?> deleteInventoryItem({
    /// The ID of the Inventory Item to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete('/inventory-items/$id');
      if (response.statusCode == 200) {
        return UserDeleteInventoryItemRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/inventory-items/$id/location-levels/$locationId',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Lists stock levels of a given location.
  @override
  Future<UserStockLevelsOfLocationRes?> listStockLevelsOfLocation({
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
        '/inventory-items/$id/location-levels',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserStockLevelsOfLocationRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/inventory-items/$id',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Lists inventory items.
  @override
  Future<UserInventoryItemsRes?> retrieveInventoryItems({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '/inventory-items',
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return UserInventoryItemsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  /// Updates an Inventory Item.
  @override
  Future<InventoryItem?> updateInventoryItem({
    /// The ID of the Inventory Item.
    required String id,
    required UserUpdateInventoryItemReq userUpdateInventoryItemReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/inventory-items',
        data: userUpdateInventoryItemReq.toJson(),
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
        '/inventory-items/$id/location-levels/$locationId',
        data: {
          if (stockedQuantity != null) 'stocked_quantity': stockedQuantity,
          if (incomingQuantity != null) 'incoming_quantity': incomingQuantity,
        },
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return InventoryItem.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }
}
