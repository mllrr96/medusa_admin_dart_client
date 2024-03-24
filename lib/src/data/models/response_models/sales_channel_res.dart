import '../index.dart';

class SalesChannelRetrieveAllRes {
  final List<SalesChannel>? salesChannels;
  final int? limit;
  final int? offset;
  final int? count;
  const SalesChannelRetrieveAllRes({
    this.salesChannels,
    this.limit,
    this.offset,
    this.count,
  });
  factory SalesChannelRetrieveAllRes.fromJson(json) {
    return SalesChannelRetrieveAllRes(
      salesChannels: json['sales_channels'] != null
          ? List<SalesChannel>.from(
              json['sales_channels'].map((x) => SalesChannel.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class RetrieveStockLocationsRes {
  final List<StockLocation>? stockLocations;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveStockLocationsRes(
      {this.stockLocations, this.limit, this.offset, this.count});
  factory RetrieveStockLocationsRes.fromJson(json) {
    return RetrieveStockLocationsRes(
      stockLocations: json['stock_locations'] != null
          ? List<StockLocation>.from(
              json['stock_locations'].map((x) => StockLocation.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class SalesChannelRetrieveRes {
  SalesChannel? salesChannel;
  SalesChannelRetrieveRes.fromJson(Map<String, dynamic> json) {
    if (json['sales_channel'] != null) {
      salesChannel = SalesChannel.fromJson(json['sales_channel']);
    }
  }
}

class RemoveStockLocationFromSalesChannelRes {
  /// The ID of the deleted Product.
  final String? id;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  final bool? deleted;

  /// The type of the object that was deleted.
  ///
  /// Default: "product"
  final String? object;

  const RemoveStockLocationFromSalesChannelRes(
      {this.id, this.deleted, this.object});

  factory RemoveStockLocationFromSalesChannelRes.fromJson(
      Map<String, dynamic> json) {
    return RemoveStockLocationFromSalesChannelRes(
      id: json['id'],
      deleted: json['deleted'],
      object: json['object'],
    );
  }
}

class SalesChannelDeleteRes {
  /// The ID of the deleted user.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "sales-channel"
  final String? object;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  final bool? deleted;

  const SalesChannelDeleteRes({this.id, this.object, this.deleted});
  factory SalesChannelDeleteRes.fromJson(Map<String, dynamic> json) {
    return SalesChannelDeleteRes(
      id: json['id'],
      object: json['object'],
      deleted: json['deleted'],
    );
  }
}
