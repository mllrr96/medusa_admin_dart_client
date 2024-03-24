

import '../../models/index.dart';

abstract class BaseRegions {
  /// Retrieves a list of Regions.
  Future<RegionsRes?> retrieveAll({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Country to the list of Countries in a Region
  Future<Region?> addCountryToRegion({
    /// The ID of the Region.
    required String id,

    /// The 2 character ISO code for the Country.
    required String countryCode,
    Map<String, dynamic>? customHeaders,
  });

  /// Removes a Country from the list of Countries in a Region
  Future<Region?> removeCountryFromRegion({
    /// The ID of the Region.
    required String id,

    /// The 2 character ISO code for the Country.
    required String countryCode,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Fulfillment Provider to a Region
  Future<Region?> addFulfillmentProvider({
    /// The ID of the Region.
    required String id,

    /// The ID of the Fulfillment Provider to add.
    required String providerId,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Fulfillment Provider to a Region
  Future<Region?> deleteFulfillmentProvider({
    /// The ID of the Region.
    required String id,

    /// The ID of the Fulfillment Provider to delete.
    required String providerId,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Payment Provider to a Region
  Future<Region?> addPaymentProvider({
    /// The ID of the Region.
    required String id,

    /// The ID of the Payment Provider to add.
    required String providerId,
    Map<String, dynamic>? customHeaders,
  });

  /// Adds a Payment Provider to a Region
  Future<Region?> deletePaymentProvider({
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
    required UpdateRegionReq userUpdateRegionReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a Region
  Future<Region?> create({
    required CreateRegionReq userCreateRegionReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  });

  /// Deletes a Region
  Future<DeleteRegionRes?> delete({
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
