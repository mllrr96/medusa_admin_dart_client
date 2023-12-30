import '../index.dart';

class UserCreateShippingOptionRes {
  UserCreateShippingOptionRes({required this.shippingOption});
  final ShippingOption shippingOption;

  factory UserCreateShippingOptionRes.fromJson(Map<String, dynamic> json) {
    return UserCreateShippingOptionRes(
        shippingOption: ShippingOption.fromJson(json['shipping_option']));
  }
}

class UserDeleteShippingOptionRes {
  /// The ID of the deleted Collection
  String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "shipping-option"
  String? object;

  /// Whether the collection was deleted successfully or not.
  ///
  /// Default: true
  bool? deleted;

  UserDeleteShippingOptionRes.fromJson(json) {
    id = json['id'];
    object = json['object'];
    deleted = json['deleted'];
  }
}

class UserUpdateShippingOptionRes {
  UserUpdateShippingOptionRes({required this.shippingOption});
  final ShippingOption shippingOption;
  factory UserUpdateShippingOptionRes.fromJson(Map<String, dynamic> json) =>
      UserUpdateShippingOptionRes(
          shippingOption: ShippingOption.fromJson(json['shipping_option']));
}

class UserRetrieveShippingOptionRes {
  UserRetrieveShippingOptionRes({required this.shippingOption});
  final ShippingOption shippingOption;
  factory UserRetrieveShippingOptionRes.fromJson(Map<String, dynamic> json) =>
      UserRetrieveShippingOptionRes(
          shippingOption: ShippingOption.fromJson(json['shipping_option']));
}

class UserRetrieveAllShippingOptionRes {
  final List<ShippingOption>? shippingOptions;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveAllShippingOptionRes(
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
