import '../index.dart';

class UserSalesChannelRetrieveAllRes {
  final List<SalesChannel>? salesChannels;
  final int? limit;
  final int? offset;
  final int? count;
  UserSalesChannelRetrieveAllRes({
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
  UserRetrieveStockLocationsRes(
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

class UserAddProductsToSalesChannelRes {
  SalesChannel? salesChannel;
  UserAddProductsToSalesChannelRes.fromJson(Map<String, dynamic> json) {
    if (json['sales_channel'] == null) return;
    salesChannel = SalesChannel.fromJson(json['sales_channel']);
  }
}

class UserRemoveProductsFromSalesChannelRes {
  SalesChannel? salesChannel;
  UserRemoveProductsFromSalesChannelRes.fromJson(Map<String, dynamic> json) {
    if (json['sales_channel'] == null) return;
    salesChannel = SalesChannel.fromJson(json['sales_channel']);
  }
}

class UserAssociateStockLocationToSalesChannelRes {
  SalesChannel? salesChannel;
  UserAssociateStockLocationToSalesChannelRes.fromJson(
      Map<String, dynamic> json) {
    if (json['sales_channel'] == null) return;
    salesChannel = SalesChannel.fromJson(json['sales_channel']);
  }
}

class UserRemoveStockLocationFromSalesChannelRes {
  /// The ID of the deleted Product.
  String? id;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  bool? deleted;

  /// The type of the object that was deleted.
  ///
  /// Default: "product"
  String? object;

  UserRemoveStockLocationFromSalesChannelRes.fromJson(
      Map<String, dynamic> json) {
    id = json['id'];
    deleted = json['deleted'] ?? false;
    object = json['object'];
  }
}

class UserSalesChannelUpdateRes {
  SalesChannel? salesChannel;
  UserSalesChannelUpdateRes.fromJson(Map<String, dynamic> json) {
    if (json['sales_channel'] != null) {
      salesChannel = SalesChannel.fromJson(json['sales_channel']);
    }
  }
}

class UserCreateSalesChannelRes {
  SalesChannel? salesChannel;
  UserCreateSalesChannelRes.fromJson(Map<String, dynamic> json) {
    if (json['sales_channel'] == null) return;
    salesChannel = SalesChannel.fromJson(json['sales_channel']);
  }
}

class UserSalesChannelDeleteRes {
  /// The ID of the deleted user.
  String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "sales-channel"
  String? object;

  /// Whether or not the items were deleted.
  ///
  /// Default: true
  bool? deleted;

  UserSalesChannelDeleteRes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    deleted = json['deleted'];
  }
}
