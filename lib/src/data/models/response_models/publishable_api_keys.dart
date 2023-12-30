import '../index.dart';

class UserRetrievePublishableApiKeysRes {
  final List<PublishableApiKey>? keys;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrievePublishableApiKeysRes(
      {this.keys, this.limit, this.offset, this.count});
  factory UserRetrievePublishableApiKeysRes.fromJson(
      Map<String, dynamic> json) {
    return UserRetrievePublishableApiKeysRes(
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

class UserPublishableApiKeyRes {
  final PublishableApiKey? key;
  UserPublishableApiKeyRes(this.key);
  factory UserPublishableApiKeyRes.fromJson(Map<String, dynamic> json) {
    return UserPublishableApiKeyRes(json['publishable_api_key'] == null
        ? null
        : PublishableApiKey.fromJson(json['publishable_api_key']));
  }
}

class UserDeletePublishableApiKeyRes {
  /// The ID of the deleted PublishableApiKey.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "publishable_api_key"
  final String? object;

  /// Whether the PublishableApiKeys was deleted successfully or not.
  final bool deleted;

  UserDeletePublishableApiKeyRes({
    required this.deleted,
    this.id,
    this.object,
  });

  factory UserDeletePublishableApiKeyRes.fromJson(json) {
    return UserDeletePublishableApiKeyRes(
      deleted: json['deleted'] ?? false,
      id: json['id'],
      object: json['object'],
    );
  }
}
