import '../index.dart';

class UserTaxRateRes {
  final TaxRate? taxRate;
  UserTaxRateRes(this.taxRate);

  factory UserTaxRateRes.fromJson(Map<String, dynamic> json) {
    return UserTaxRateRes(
        json['tax_rate'] != null ? TaxRate.fromJson(json['tax_rate']) : null);
  }
}

class UserRetrieveTaxRatesRes {
  final List<TaxRate>? taxRates;
  final int? limit;
  final int? offset;
  final int? count;
  UserRetrieveTaxRatesRes({this.taxRates, this.limit, this.offset, this.count});
  factory UserRetrieveTaxRatesRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveTaxRatesRes(
      taxRates: json['tax_rates'] != null
          ? List<TaxRate>.from(
              json['tax_rates'].map((x) => TaxRate.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserDeleteTaxRateRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "item_change"
  final String? object;

  /// Whether or not the Order Edit Item Change was deleted.
  final bool deleted;
  UserDeleteTaxRateRes({required this.deleted, this.id, this.object});
  factory UserDeleteTaxRateRes.fromJson(json) {
    return UserDeleteTaxRateRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
