import '../index.dart';

class UserAddProductsToCategoryRes {
  final ProductCategory? productCategory;
  UserAddProductsToCategoryRes(this.productCategory);

  factory UserAddProductsToCategoryRes.fromJson(Map<String, dynamic> json) {
    return UserAddProductsToCategoryRes(json['product_category'] != null
        ? ProductCategory.fromJson(json['product_category'])
        : null);
  }
}

class UserRetrieveProductCategoryRes {
  final ProductCategory? productCategory;
  UserRetrieveProductCategoryRes(this.productCategory);

  factory UserRetrieveProductCategoryRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveProductCategoryRes(json['product_category'] != null
        ? ProductCategory.fromJson(json['product_category'])
        : null);
  }
}

class UserUpdateProductCategoryRes {
  final ProductCategory? productCategory;
  UserUpdateProductCategoryRes(this.productCategory);

  factory UserUpdateProductCategoryRes.fromJson(Map<String, dynamic> json) {
    return UserUpdateProductCategoryRes(json['product_category'] != null
        ? ProductCategory.fromJson(json['product_category'])
        : null);
  }
}

class UserDeleteProductsToCategoryRes {
  final ProductCategory? productCategory;
  UserDeleteProductsToCategoryRes(this.productCategory);

  factory UserDeleteProductsToCategoryRes.fromJson(Map<String, dynamic> json) {
    return UserDeleteProductsToCategoryRes(json['product_category'] != null
        ? ProductCategory.fromJson(json['product_category'])
        : null);
  }
}

class UserDeleteProductCategoryRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount"
  final String? object;

  /// Whether the discount was deleted successfully or not.
  final bool deleted;

  UserDeleteProductCategoryRes({required this.deleted, this.id, this.object});

  factory UserDeleteProductCategoryRes.fromJson(json) {
    return UserDeleteProductCategoryRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}

class UserCreateProductCategoryRes {
  final ProductCategory? productCategory;
  UserCreateProductCategoryRes(this.productCategory);

  factory UserCreateProductCategoryRes.fromJson(Map<String, dynamic> json) {
    return UserCreateProductCategoryRes(json['product_category'] != null
        ? ProductCategory.fromJson(json['product_category'])
        : null);
  }
}

class UserRetrieveProductCategoriesRes {
  final List<ProductCategory>? productCategories;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveProductCategoriesRes(
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
  UserRetrieveReservationsRes(
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
