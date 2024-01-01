import '../index.dart';

class UserDeleteShippingOptionRes {
  /// The ID of the deleted Collection
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "shipping-option"
  final String? object;

  /// Whether the collection was deleted successfully or not.
  ///
  /// Default: true
  final bool? deleted;

  const UserDeleteShippingOptionRes({this.id, this.object, this.deleted});
  factory UserDeleteShippingOptionRes.fromJson(json) {
    return UserDeleteShippingOptionRes(
      id: json['id'],
      object: json['object'],
      deleted: json['deleted'],
    );
  }
}

class UserRetrieveAllShippingOptionRes {
  final List<ShippingOption>? shippingOptions;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveAllShippingOptionRes(
      {this.shippingOptions, this.limit, this.offset, this.count});
  factory UserRetrieveAllShippingOptionRes.fromJson(json) {
    return UserRetrieveAllShippingOptionRes(
      shippingOptions: json['shipping_options'] != null
          ? List<ShippingOption>.from(
              json['shipping_options'].map((x) => ShippingOption.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
