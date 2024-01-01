import '../index.dart';

class UserSalesChannelRetrieveAllRes {
  final List<SalesChannel>? salesChannels;
  final int? limit;
  final int? offset;
  final int? count;
  const UserSalesChannelRetrieveAllRes({
    this.salesChannels,
    this.limit,
    this.offset,
    this.count,
  });
  factory UserSalesChannelRetrieveAllRes.fromJson(json) {
    return UserSalesChannelRetrieveAllRes(
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

class UserRetrieveStockLocationsRes {
  final List<StockLocation>? stockLocations;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveStockLocationsRes(
      {this.stockLocations, this.limit, this.offset, this.count});
  factory UserRetrieveStockLocationsRes.fromJson(json) {
    return UserRetrieveStockLocationsRes(
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

class UserSalesChannelRetrieveRes {
  SalesChannel? salesChannel;
  UserSalesChannelRetrieveRes.fromJson(Map<String, dynamic> json) {
    if (json['sales_channel'] != null) {
      salesChannel = SalesChannel.fromJson(json['sales_channel']);
    }
  }
}

class UserRemoveStockLocationFromSalesChannelRes {
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

  const UserRemoveStockLocationFromSalesChannelRes(
      {this.id, this.deleted, this.object});

  factory UserRemoveStockLocationFromSalesChannelRes.fromJson(
      Map<String, dynamic> json) {
    return UserRemoveStockLocationFromSalesChannelRes(
      id: json['id'],
      deleted: json['deleted'],
      object: json['object'],
    );
  }
}

class UserSalesChannelDeleteRes {
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

  const UserSalesChannelDeleteRes({this.id, this.object, this.deleted});
  factory UserSalesChannelDeleteRes.fromJson(Map<String, dynamic> json) {
    return UserSalesChannelDeleteRes(
      id: json['id'],
      object: json['object'],
      deleted: json['deleted'],
    );
  }
}
