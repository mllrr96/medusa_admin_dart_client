

import '../../models/index.dart';

abstract class BaseStockLocation {
  /// Creates a Stock Location.
  Future<StockLocation?> createStockLocation({
    required UserCreateStockLocationReq userCreateStockLocationReq,
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
    required UserUpdateStockLocationReq userUpdateStockLocationReq,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
  /// Updates a Stock Location.
  Future<UserDeleteStockLocationRes?> deleteStockLocation({
    /// The ID of the Stock Location.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
