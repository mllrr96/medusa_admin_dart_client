import '../index.dart';

class CurrencyRes {
  final List<Currency>? currencies;
  final int? limit;
  final int? offset;
  final int? count;
  const CurrencyRes({this.currencies, this.limit, this.offset, this.count});
  factory CurrencyRes.fromJson(json) {
    return CurrencyRes(
      currencies: json['currencies'] != null
          ? List<Currency>.from(
              json['currencies'].map((x) => Currency.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
