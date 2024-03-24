

import '../../models/index.dart';

abstract class BaseStockLocation {
  /// Creates a Stock Location.
  Future<StockLocation?> createStockLocation({
    required CreateStockLocationReq userCreateStockLocationReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves the Stock Location.
  Future<StockLocation?> retrieveStockLocation({
    /// The ID of the Stock Location.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Stock Location.
  Future<StockLocation?> updateStockLocation({
    /// The ID of the Stock Location.
    required String id,
    required UpdateStockLocationReq userUpdateStockLocationReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
  /// Updates a Stock Location.
  Future<DeleteStockLocationRes?> deleteStockLocation({
    /// The ID of the Stock Location.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
