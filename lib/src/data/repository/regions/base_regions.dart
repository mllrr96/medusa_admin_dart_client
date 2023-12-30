

import '../../models/index.dart';
import '../../models/response_models/regions.dart';

abstract class BaseRegions {
  /// Retrieves a list of Regions.
  Future<UserRegionsRes?> retrieveAll({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Country to the list of Countries in a Region
  Future<UserRegionsRes?> addCountryToRegion({
    /// The ID of the Region.
    required String id,

    /// The 2 character ISO code for the Country.
    required String countryCode,
    Map<String, dynamic>? customHeaders,
  });

  /// Removes a Country from the list of Countries in a Region
  Future<UserRegionsRes?> removeCountryFromRegion({
    /// The ID of the Region.
    required String id,

    /// The 2 character ISO code for the Country.
    required String countryCode,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Fulfillment Provider to a Region
  Future<UserRegionsRes?> addFulfillmentProvider({
    /// The ID of the Region.
    required String id,

    /// The ID of the Fulfillment Provider to add.
    required String providerId,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Fulfillment Provider to a Region
  Future<UserRegionsRes?> deleteFulfillmentProvider({
    /// The ID of the Region.
    required String id,

    /// The ID of the Fulfillment Provider to delete.
    required String providerId,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Payment Provider to a Region
  Future<UserRegionsRes?> addPaymentProvider({
    /// The ID of the Region.
    required String id,

    /// The ID of the Payment Provider to add.
    required String providerId,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Payment Provider to a Region
  Future<UserRegionsRes?> deletePaymentProvider({
    /// The ID of the Region.
    required String id,

    /// The ID of the Payment Provider to delete.
    required String providerId,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieves a Region.
  Future<Region?> retrieve({
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a Region.
  Future<Region?> update({
    required String id,
    required UserUpdateRegionReq userUpdateRegionReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a Region
  Future<Region?> create({
    required UserCreateRegionReq userCreateRegionReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Deletes a Region
  Future<UserDeleteRegionRes?> delete({
    /// The ID of the Region.
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Gathers all the fulfillment options available to in the Region.
  Future<List<FulfillmentOption>?> retrieveFulfillmentOptions({
    /// The ID of the Region.
    required String id,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });
}
