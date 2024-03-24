

import '../../models/index.dart';

abstract class BasePublishableApiKey {
  Future<RetrievePublishableApiKeysRes?> retrievePublishableApiKeys({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Retrieve the Publishable Api Key.
  Future<PublishableApiKey?> retrievePublishableApiKey({
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Updates a PublishableApiKey.
  Future<PublishableApiKey?> updatePublishableApiKey({
    /// The ID of the PublishableApiKey.
    required String id,

    /// A title to update for the key.
    String? title,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Creates a PublishableApiKey.
  Future<PublishableApiKey?> createPublishableApiKey({
    /// A title for the publishable api key.
    required String title,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Deletes a PublishableApiKeys
  Future<DeletePublishableApiKeyRes?> deletePublishableApiKey({
    /// The ID of the PublishableApiKeys to delete.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// Revokes a PublishableApiKey.
  Future<PublishableApiKey?> revokePublishableApiKey({
    /// The ID of the PublishableApiKey.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// List PublishableApiKey's SalesChannels
  Future<SalesChannelRetrieveAllRes?> retrieveSalesChannels({
    /// The ID of the Publishable Api Key.
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// List PublishableApiKey's SalesChannels
  Future<PublishableApiKey?> addSalesChannels({
    /// The ID of the Publishable Api Key.
    required String id,
    required List<String> salesChannelsIds,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });

  /// List PublishableApiKey's SalesChannels
  Future<PublishableApiKey?> deleteSalesChannels({
    /// The ID of the Publishable Api Key.
    required String id,
    required List<String> salesChannelsIds,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
