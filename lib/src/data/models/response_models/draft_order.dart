import '../index.dart';

class UserDraftOrdersRes {
  final List<DraftOrder>? draftOrders;
  final int? limit;
  final int? offset;
  final int? count;
  const UserDraftOrdersRes({this.draftOrders, this.limit, this.offset, this.count});
  factory UserDraftOrdersRes.fromJson(Map<String, dynamic> json) {
    return UserDraftOrdersRes(
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

class UserDeleteDraftOrderRes {
  /// The ID of the deleted Draft Order.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "draft-order"
  final String? object;

  /// Whether the draft order was deleted successfully or not.
  final bool deleted;

  const  UserDeleteDraftOrderRes({
    required this.deleted,
    this.id,
    this.object,
  });

  factory UserDeleteDraftOrderRes.fromJson(json) {
    return UserDeleteDraftOrderRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
