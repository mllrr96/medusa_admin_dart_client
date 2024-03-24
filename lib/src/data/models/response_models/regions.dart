import '../index.dart';

class RegionsRes {
  final List<Region>? regions;
  final int? limit;
  final int? offset;
  final int? count;
  const  RegionsRes({this.regions, this.limit, this.offset, this.count});
  factory RegionsRes.fromJson(json) {
    return RegionsRes(
      regions: json['regions'] != null
          ? List<Region>.from(json['regions'].map((x) => Region.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class DeleteRegionRes {
  /// The ID of the deleted Region.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "region"
  final String? object;

  /// Whether or not the region were deleted.
  final bool deleted;

  const DeleteRegionRes({required this.deleted, this.id, this.object});

  factory DeleteRegionRes.fromJson(json) {
    return DeleteRegionRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
