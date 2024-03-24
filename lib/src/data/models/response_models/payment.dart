class CreateRefundPaymentRes {
  /// The amount to refund.
  final int amount;

  /// The reason for the Refund.
  final String reason;

  /// A note with additional details about the Refund.
  final String? note;

  const CreateRefundPaymentRes({
    required this.amount,
    required this.reason,
    this.note,
  });

  factory CreateRefundPaymentRes.fromJson(Map<String, dynamic> json) {
    return CreateRefundPaymentRes(amount: json['amount'], reason: json['reason'], note: json['note']);
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['amount'] = amount;
    json['reason'] = reason;
    if (note != null) {
      json['note'] = note;
    }
    return json;
  }
}
