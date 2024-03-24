import '../index.dart';

class DeleteProductCategoryRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "discount"
  final String? object;

  /// Whether the discount was deleted successfully or not.
  final bool deleted;

  const DeleteProductCategoryRes({required this.deleted, this.id, this.object});

  factory DeleteProductCategoryRes.fromJson(json) {
    return DeleteProductCategoryRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}


class RetrieveProductCategoriesRes {
  final List<ProductCategory>? productCategories;
  final int? limit;
  final int? offset;
  final int? count;
  const  RetrieveProductCategoriesRes(
      {this.productCategories, this.limit, this.offset, this.count});
  factory RetrieveProductCategoriesRes.fromJson(Map<String, dynamic> json) {
    return RetrieveProductCategoriesRes(
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

class RetrieveReservationsRes {
  final List<Reservation>? reservations;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveReservationsRes(
      {this.reservations, this.limit, this.offset, this.count});
  factory RetrieveReservationsRes.fromJson(Map<String, dynamic> json) {
    return RetrieveReservationsRes(
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
