import '../index.dart';

class UserRetrieveSwapsRes {
  final List<Swap>? swaps;
  final int? limit;
  final int? offset;
  final int? count;
  const UserRetrieveSwapsRes({this.swaps, this.limit, this.offset, this.count});
  factory UserRetrieveSwapsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveSwapsRes(
      swaps: json['swaps'] != null
          ? List<Swap>.from(json['swaps'].map((x) => Swap.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
