import '../index.dart';

class UpdateOrderReq {
  /// the email for the order
  final String? email;

  /// ID of the customer
  final String? customerId;

  /// ID of the region where the order belongs
  final String? region;

  /// Billing address
  final Address? billingAddress;

  /// Shipping address
  final Address? shippingAddress;

  /// The Line Items for the order
  final List<AdditionalItem>? items;

  /// Discounts applied to the order
  final List<Discount>? discounts;
  // final Payment payment;
  final bool? noNotification;
  UpdateOrderReq({
    this.email,
    this.customerId,
    this.region,
    this.billingAddress,
    this.shippingAddress,
    this.items,
    this.discounts,
    this.noNotification,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};

    if (email != null) {
      json['email'] = email;
    }

    if (customerId != null) {
      json['customer_id'] = customerId;
    }

    if (region != null) {
      json['region'] = region;
    }

    if (billingAddress != null) {
      json['billing_address'] = billingAddress!.toJson();
    }

    if (shippingAddress != null) {
      json['shipping_address'] = shippingAddress!.toJson();
    }
    if (items != null) {
      json['items'] = items!.map((e) => e.toJson()).toList();
    }

    if (discounts != null) {
      json['discounts'] = discounts!.map((e) => e.toJson()).toList();
    }

    if (noNotification != null) {
      json['no_notification'] = noNotification;
    }

    return json;
  }
}

class CreateRefundOrdersReq {
  /// The amount to refund.
  final int amount;

  /// The reason for the Refund.
  final String reason;

  /// A note with additional details about the Refund.
  final String? note;

  /// If set to true no notification will be send related to this Refund.
  final bool? noNotification;
  CreateRefundOrdersReq({
    required this.amount,
    required this.reason,
    this.note,
    this.noNotification,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['amount'] = amount;
    json['reason'] = reason;
    if (note != null) {
      json['note'] = note;
    }
    if (noNotification != null) {
      json['no_notification'] = noNotification;
    }

    return json;
  }
}

class RequestReturnOrdersReq {
  /// The Line Items that will be returned.
  final List<AdditionalItem> items;

  /// The Shipping Method to be used to handle the return shipment.
  final ShippingMethod? returnShipping;

  /// An optional note with information about the Return.
  final String? note;

  /// A flag to indicate if no notifications should be emitted related to the requested Return.
  final bool? noNotification;

  /// A flag to indicate if the Return should be registered as received immediately.
  final bool? receiveNow;

  /// The amount to refund.
  final int? refund;

  RequestReturnOrdersReq({
    required this.items,
    this.returnShipping,
    this.note,
    this.noNotification,
    this.receiveNow,
    this.refund,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['items'] = items.map((e) => e.toJson()).toList();
    if (returnShipping != null) {
      json['return_shipping'] = returnShipping;
    }
    if (note != null) {
      json['note'] = note;
    }
    if (noNotification != null) {
      json['no_notification'] = noNotification;
    }
    if (receiveNow != null) {
      json['receive_now'] = receiveNow;
    }
    if (refund != null) {
      json['refund'] = refund;
    }

    return json;
  }
}
