import '../index.dart';

class RetrievePublishableApiKeysRes {
  final List<PublishableApiKey>? keys;
  final int? limit;
  final int? offset;
  final int? count;
  const  RetrievePublishableApiKeysRes(
      {this.keys, this.limit, this.offset, this.count});
  factory RetrievePublishableApiKeysRes.fromJson(
      Map<String, dynamic> json) {
    return RetrievePublishableApiKeysRes(
      keys: json['publishable_api_keys'] != null
          ? List<PublishableApiKey>.from(json['publishable_api_keys']
              .map((x) => PublishableApiKey.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class DeletePublishableApiKeyRes {
  /// The ID of the deleted PublishableApiKey.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "publishable_api_key"
  final String? object;

  /// Whether the PublishableApiKeys was deleted successfully or not.
  final bool deleted;

  const DeletePublishableApiKeyRes({
    required this.deleted,
    this.id,
    this.object,
  });

  factory DeletePublishableApiKeyRes.fromJson(json) {
    return DeletePublishableApiKeyRes(
      deleted: json['deleted'] ?? false,
      id: json['id'],
      object: json['object'],
    );
  }
}
