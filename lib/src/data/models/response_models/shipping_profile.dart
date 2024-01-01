import '../index.dart';

class UserRetrieveAllShippingProfileRes {
  final List<ShippingProfile>? shippingProfiles;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveAllShippingProfileRes(
      {this.shippingProfiles, this.limit, this.offset, this.count});
  factory UserRetrieveAllShippingProfileRes.fromJson(
      Map<String, dynamic> json) {
    return UserRetrieveAllShippingProfileRes(
      shippingProfiles: json['shipping_profiles'] != null
          ? List<ShippingProfile>.from(
              json['shipping_profiles'].map((x) => ShippingProfile.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserDeleteShippingProfileRes {
  /// The ID of the deleted Shipping Profile.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "shipping_profile"
  final String? object;

  /// Whether or not the items were deleted.
  final bool deleted;
  const  UserDeleteShippingProfileRes({required this.deleted, this.id, this.object});
  factory UserDeleteShippingProfileRes.fromJson(json) {
    return UserDeleteShippingProfileRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
