class FulfillmentOption {
  /// ID of the fulfillment provider
  final String? providerId;

  // final FulfillmentOptions? options;
  const FulfillmentOption({this.providerId});

  factory FulfillmentOption.fromJson(Map<String, dynamic> json) {
    return FulfillmentOption(providerId: json['provider_id']);
  }
}