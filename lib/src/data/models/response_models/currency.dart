import '../index.dart';

class UserCurrencyRes {
  final List<Currency>? currencies;
  final int? limit;
  final int? offset;
  final int? count;
  const UserCurrencyRes({this.currencies, this.limit, this.offset, this.count});
  factory UserCurrencyRes.fromJson(json) {
    return UserCurrencyRes(
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
