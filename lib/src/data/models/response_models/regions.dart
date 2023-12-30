import '../index.dart';

class UserRegionsRes {
  final List<Region>? regions;
  final int? limit;
  final int? offset;
  final int? count;
  UserRegionsRes({this.regions, this.limit, this.offset, this.count});
  factory UserRegionsRes.fromJson(json) {
    return UserRegionsRes(
      regions: json['regions'] != null
          ? List<Region>.from(json['regions'].map((x) => Region.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserRegionRes {
  Region? region;

  UserRegionRes.fromJson(json) {
    if (json['region'] != null) {
      region = Region.fromJson(json['region']);
    }
  }
}

class UserRetrieveFulfillmentOptionsRes {
  List<FulfillmentOption>? fulfillmentOptions;

  UserRetrieveFulfillmentOptionsRes.fromJson(json) {
    if (json['fulfillment_options'] == null) return;
    fulfillmentOptions = <FulfillmentOption>[];
    json['fulfillment_options']
        .forEach((v) => fulfillmentOptions?.add(FulfillmentOption.fromJson(v)));
  }
}

class UserDeleteRegionRes {
  /// The ID of the deleted Region.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "region"
  final String? object;

  /// Whether or not the region were deleted.
  final bool deleted;

  UserDeleteRegionRes({required this.deleted, this.id, this.object});

  factory UserDeleteRegionRes.fromJson(json) {
    return UserDeleteRegionRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
