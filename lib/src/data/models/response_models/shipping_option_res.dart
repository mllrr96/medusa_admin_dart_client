import '../index.dart';

class DeleteShippingOptionRes {
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

  const DeleteShippingOptionRes({this.id, this.object, this.deleted});
  factory DeleteShippingOptionRes.fromJson(json) {
    return DeleteShippingOptionRes(
      id: json['id'],
      object: json['object'],
      deleted: json['deleted'],
    );
  }
}

class RetrieveAllShippingOptionRes {
  final List<ShippingOption>? shippingOptions;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveAllShippingOptionRes(
      {this.shippingOptions, this.limit, this.offset, this.count});
  factory RetrieveAllShippingOptionRes.fromJson(json) {
    return RetrieveAllShippingOptionRes(
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
