import '../store_models/store/index.dart';

class StoreRegionsListRes {
  final List<Region>? regions;
  StoreRegionsListRes({this.regions});
  factory StoreRegionsListRes.fromJson(json) {
    return StoreRegionsListRes(
      regions: json['regions'] != null
          ? (json['regions'] as List).map((i) => Region.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['regions'] = regions?.map((e) => e.toJson()).toList();
    return data;
  }
}

class StoreRegionsRes {
  final Region? region;
  StoreRegionsRes({this.region});
  factory StoreRegionsRes.fromJson(json) {
    return StoreRegionsRes(
      region: json["region"] != null ? Region.fromJson(json["region"]) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['region'] = region?.toJson();
    return data;
  }
}
