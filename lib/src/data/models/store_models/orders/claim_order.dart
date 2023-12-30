import '../store/index.dart';
import 'claim_item.dart';
import 'order.dart';
import '../../../enum/enums.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/orders/claim_order.g.dart';

@CopyWith()
class ClaimOrder {
  final String? id;
  final ClaimType? type;
  final ClaimPaymentStatus paymentStatus;
  final ClaimFulfillmentStatus fulfillmentStatus;
  final List<ClaimItem>? claimItems;
  final List<LineItem>? additionalItems;
  final String? orderId;
  final Order? order;
  final Return? returnOrder;
  final String? shippingAddressId;
  final Address? shippingAddress;
  final List<ShippingMethod>? shippingMethods;
  final List<Fulfillment>? fulfillments;
  final int? refundAmount;
  final DateTime? canceledAt;
  final bool? noNotification;
  final String? idempotencyKey;
  final DateTime? createdAt;
  final DateTime? deletedAt;
  final DateTime? updatedAt;
  final Map<String, dynamic>? metadata;

  const ClaimOrder({
    this.id,
    required this.type,
    required this.paymentStatus,
    required this.fulfillmentStatus,
    this.claimItems,
    this.additionalItems,
    required this.orderId,
    this.order,
    this.returnOrder,
    this.shippingAddressId,
    this.shippingAddress,
    this.shippingMethods,
    this.fulfillments,
    this.refundAmount,
    this.canceledAt,
    this.noNotification,
    this.idempotencyKey,
    this.createdAt,
    this.deletedAt,
    this.updatedAt,
    this.metadata,
  });

  factory ClaimOrder.fromJson(Map<String, dynamic> json) {
    return ClaimOrder(
      id: json['id'],
      idempotencyKey: json['idempotency_key'],
      type: json['type'] != null
          ? ClaimType.values.firstWhere((e) => e.value == (json['type'] ?? ''),
              orElse: () => ClaimType.refund)
          : null,
      paymentStatus: ClaimPaymentStatus.values.firstWhere(
          (e) => e.value == (json['payment_status'] ?? ''),
          orElse: () => ClaimPaymentStatus.na),
      fulfillmentStatus: ClaimFulfillmentStatus.values.firstWhere(
          (e) => e.value == (json['fulfillment_status'] ?? ''),
          orElse: () => ClaimFulfillmentStatus.notFulfilled),
      claimItems: json['claim_items'] != null
          ? null
          : json['claim_items'].map((e) => ClaimItem.fromJson(e)).toList(),
      additionalItems: json['additional_items'] != null
          ? null
          : json['additional_items'].map((e) => LineItem.fromJson(e)).toList(),
      orderId: json['order_id'],
      order: json['order'] != null ? Order.fromJson(json['order']) : null,
      returnOrder: json['return_order'] != null
          ? Return.fromJson(json['return_order'])
          : null,
      shippingAddress: json['shipping_address'] != null
          ? Address.fromJson(json['shipping_address'])
          : null,
      shippingAddressId: json['shipping_address_id'],
      shippingMethods: json['shipping_methods'] != null
          ? null
          : json['shipping_methods']
              .map((e) => ShippingMethod.fromJson(e))
              .toList(),
      fulfillments: json['fulfillments'] != null
          ? null
          : json['fulfillments'].map((e) => Fulfillment.fromJson(e)).toList(),
      refundAmount: json['refund_amount'],
      canceledAt: DateTime.tryParse(json['canceled_at'] ?? ''),
      createdAt: DateTime.tryParse(json['created_at'] ?? ''),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? ''),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? ''),
      metadata: json['metadata'],
      noNotification: json['no_notification'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['id'] = id;
    json['type'] = type?.value;
    json['payment_status'] = paymentStatus.value;
    json['fulfillment_status'] = fulfillmentStatus.value;
    json['claim_items'] = claimItems?.map((e) => e.toJson()).toList();
    json['additional_items'] = additionalItems?.map((e) => e.toJson()).toList();
    json['order_id'] = orderId;
    json['order'] = order?.toJson();
    json['return_order'] = returnOrder?.toJson();
    json['shipping_address_id'] = shippingAddressId;
    json['shipping_address'] = shippingAddress?.toJson();
    json['shipping_methods'] = shippingMethods?.map((e) => e.toJson()).toList();
    json['fulfillments'] = fulfillments?.map((e) => e.toJson()).toList();
    json['refund_amount'] = refundAmount;
    json['no_notification'] = noNotification;
    json['idempotency_key'] = idempotencyKey;
    json['canceled_at'] = canceledAt.toString();
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['deleted_at'] = deletedAt.toString();
    json['metadata'] = metadata;
    return json;
  }
}
