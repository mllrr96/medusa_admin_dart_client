import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/fulfillment_provider.g.dart';

@CopyWith()
class FulfillmentProvider {
  /// The id of the fulfillment provider as given by the fulfillment service.
  ///
  /// Example: "manual"
  final String? id;

  /// Whether the fulfillment service is installed in the current version. if a fulfillment service is no longer installed, the is_installed attribute is set to false.
  ///
  /// Default: true
  final bool isInstalled;

  FulfillmentProvider({
    this.id,
    this.isInstalled = true,
  });

  factory FulfillmentProvider.fromJson(Map<String, dynamic> json) => FulfillmentProvider(
        id: json['id'],
        isInstalled: json['is_installed'] ?? true,
      );

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['id'] = id;
    json['is_installed'] = isInstalled;
    return json;
  }
}
