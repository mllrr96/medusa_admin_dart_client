import '../index.dart';

class DeleteLineItemChangeRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "item_change"
  final String? object;

  /// Whether or not the Order Edit Item Change was deleted.
  final bool deleted;
  const DeleteLineItemChangeRes({required this.deleted, this.id, this.object});
  factory DeleteLineItemChangeRes.fromJson(json) {
    return DeleteLineItemChangeRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}

class DeleteOrderEditRes {
  /// The ID of the deleted Order Edit.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "order_edit"
  final String? object;

  /// Whether or not the Order Edit was deleted.
  final bool deleted;
  const DeleteOrderEditRes({required this.deleted, this.id, this.object});
  factory DeleteOrderEditRes.fromJson(json) {
    return DeleteOrderEditRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}


class RetrieveAllOrderEditRes {
  final List<OrderEdit>? orderEdits;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveAllOrderEditRes(
      {this.orderEdits, this.limit, this.offset, this.count});
  factory RetrieveAllOrderEditRes.fromJson(json) {
    return RetrieveAllOrderEditRes(
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
