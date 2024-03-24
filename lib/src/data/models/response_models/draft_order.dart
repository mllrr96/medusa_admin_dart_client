import '../index.dart';

class DraftOrdersRes {
  final List<DraftOrder>? draftOrders;
  final int? limit;
  final int? offset;
  final int? count;
  const DraftOrdersRes({this.draftOrders, this.limit, this.offset, this.count});
  factory DraftOrdersRes.fromJson(Map<String, dynamic> json) {
    return DraftOrdersRes(
      draftOrders: json['draft_orders'] != null
          ? List<DraftOrder>.from(
              json['draft_orders'].map((x) => DraftOrder.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class DeleteDraftOrderRes {
  /// The ID of the deleted Draft Order.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "draft-order"
  final String? object;

  /// Whether the draft order was deleted successfully or not.
  final bool deleted;

  const  DeleteDraftOrderRes({
    required this.deleted,
    this.id,
    this.object,
  });

  factory DeleteDraftOrderRes.fromJson(json) {
    return DeleteDraftOrderRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
