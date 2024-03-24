import '../index.dart';

class RetrieveTaxRatesRes {
  final List<TaxRate>? taxRates;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveTaxRatesRes({this.taxRates, this.limit, this.offset, this.count});
  factory RetrieveTaxRatesRes.fromJson(Map<String, dynamic> json) {
    return RetrieveTaxRatesRes(
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

class DeleteTaxRateRes {
  /// The ID of the deleted Order Edit Item Change.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "item_change"
  final String? object;

  /// Whether or not the Order Edit Item Change was deleted.
  final bool deleted;
  const DeleteTaxRateRes({required this.deleted, this.id, this.object});
  factory DeleteTaxRateRes.fromJson(json) {
    return DeleteTaxRateRes(
        deleted: json['deleted'] ?? false,
        id: json['id'],
        object: json['object']);
  }
}
