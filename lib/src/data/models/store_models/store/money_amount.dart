import '../products/index.dart';
import 'index.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/money_amount.g.dart';

@CopyWith()
class MoneyAmount {
  /// The ID of the price.
 final String? id;


  /// The 3 character ISO currency code for which the price will be used.
  ///
  /// Only required if region_id is not provided.
 final String? currencyCode;
 final Currency? currency;
  /// The amount to charge for the Product Variant.
 final int? amount;
  /// The minimum quantity for which the price will be used.
 final int? minQuantity;
  /// The maximum quantity for which the price will be used.
 final int? maxQuantity;
 final String? priceListId;
 final List<PriceList>? priceList;
  /// The ID of the Variant for which the price is used.
 final String? variantId;
 final  ProductVariant? variant;
  /// The ID of the Region for which the price is used. Only required if currency_code is not provided.
 final String? regionId;
 final Region? region;
 final DateTime? createdAt;
 final DateTime? deletedAt;
 final DateTime? updatedAt;
 final Map<String, dynamic>? metadata;

  MoneyAmount({
    this.id,
    this.currencyCode,
    this.currency,
    this.amount,
    this.minQuantity,
    this.maxQuantity,
    this.priceListId,
    this.priceList,
    this.variantId,
    this.variant,
    this.regionId,
    this.region,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

 factory MoneyAmount.fromJson(Map<String, dynamic> json) {
   return MoneyAmount(
      id: json['id'],
      currencyCode: json['currency_code'],
      currency: json['currency'] != null ? Currency.fromJson(json['currency']) : null,
      amount: json['amount'],
      minQuantity: json['min_quantity'],
      maxQuantity: json['max_quantity'],
      priceListId: json['price_list_id'],
      variantId: json['variant_id'],
      variant: json['variant'] != null ? ProductVariant.fromJson(json['variant']) : null,
      regionId: json['region_id'],
      region: json['region'] != null ? Region.fromJson(json['region_id']) : null,
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? '')?.toLocal(),
      metadata: json['metadata'],
   );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id;
    }
    if (currencyCode != null) {
      json['currency_code'] = currencyCode;
    }
    if (currency != null) {
      json['currency'] = currency?.toJson();
    }
    if (amount != null) {
      json['amount'] = amount;
    }
    if (minQuantity != null) {
      json['min_quantity'] = minQuantity;
    }
    if (maxQuantity != null) {
      json['max_quantity'] = maxQuantity;
    }
    if (priceListId != null) {
      json['price_list_id'] = priceListId;
    }
    if (variantId != null) {
      json['variant_id'] = variantId;
    }
    if (variant != null) {
      json['variant'] = variant?.toJson();
    }
    if (regionId != null) {
      json['region_id'] = regionId;
    }
    if (region != null) {
      json['region'] = region?.toJson();
    }
    if (createdAt != null) {
      json['created_at'] = createdAt.toString();
    }
    if (updatedAt != null) {
      json['updated_at'] = updatedAt.toString();
    }
    if (deletedAt != null) {
      json['deleted_at'] = deletedAt.toString();
    }
    if (metadata != null) {
      json['metadata'] = metadata;
    }
    return json;
  }
}
