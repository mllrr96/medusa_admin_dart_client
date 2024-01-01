import '../index.dart';

class UserDeleteProductCategoryRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount"
  final String? object;

  /// Whether the discount was deleted successfully or not.
  final bool deleted;

  const UserDeleteProductCategoryRes({required this.deleted, this.id, this.object});

  factory UserDeleteProductCategoryRes.fromJson(json) {
    return UserDeleteProductCategoryRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}


class UserRetrieveProductCategoriesRes {
  final List<ProductCategory>? productCategories;
  final int? limit;
  final int? offset;
  final int? count;
  const  UserRetrieveProductCategoriesRes(
      {this.productCategories, this.limit, this.offset, this.count});
  factory UserRetrieveProductCategoriesRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveProductCategoriesRes(
      productCategories: json['product_categories'] != null
          ? List<ProductCategory>.from(json['product_categories']
              .map((x) => ProductCategory.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserRetrieveReservationsRes {
  final List<Reservation>? reservations;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveReservationsRes(
      {this.reservations, this.limit, this.offset, this.count});
  factory UserRetrieveReservationsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveReservationsRes(
      reservations: json['reservations'] != null
          ? List<Reservation>.from(
              json['reservations'].map((x) => Reservation.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
