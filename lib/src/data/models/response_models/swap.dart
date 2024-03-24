import '../index.dart';

class RetrieveSwapsRes {
  final List<Swap>? swaps;
  final int? limit;
  final int? offset;
  final int? count;
  const RetrieveSwapsRes({this.swaps, this.limit, this.offset, this.count});
  factory RetrieveSwapsRes.fromJson(Map<String, dynamic> json) {
    return RetrieveSwapsRes(
      swaps: json['swaps'] != null
          ? List<Swap>.from(json['swaps'].map((x) => Swap.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
