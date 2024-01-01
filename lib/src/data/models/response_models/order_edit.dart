import '../index.dart';

class UserDeleteLineItemChangeRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "item_change"
  final String? object;

  /// Whether or not the Order Edit Item Change was deleted.
  final bool deleted;
  const UserDeleteLineItemChangeRes({required this.deleted, this.id, this.object});
  factory UserDeleteLineItemChangeRes.fromJson(json) {
    return UserDeleteLineItemChangeRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}

class UserDeleteOrderEditRes {
  /// The ID of the deleted Order Edit.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "order_edit"
  final String? object;

  /// Whether or not the Order Edit was deleted.
  final bool deleted;
  const UserDeleteOrderEditRes({required this.deleted, this.id, this.object});
  factory UserDeleteOrderEditRes.fromJson(json) {
    return UserDeleteOrderEditRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}


class UserRetrieveAllOrderEditRes {
  final List<OrderEdit>? orderEdits;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveAllOrderEditRes(
      {this.orderEdits, this.limit, this.offset, this.count});
  factory UserRetrieveAllOrderEditRes.fromJson(json) {
    return UserRetrieveAllOrderEditRes(
      orderEdits: json['order_edits'] != null
          ? List<OrderEdit>.from(
              json['order_edits'].map((x) => OrderEdit.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
