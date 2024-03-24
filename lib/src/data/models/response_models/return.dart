import '../index.dart';

class RetrieveReturnsRes {
  final List<Return>? returns;
  final int? limit;
  final int? offset;
  final int? count;
  const  RetrieveReturnsRes({this.returns, this.limit, this.offset, this.count});
  factory RetrieveReturnsRes.fromJson(Map<String, dynamic> json) {
    return RetrieveReturnsRes(
      returns: json['returns'] != null
          ? List<Return>.from(json['returns'].map((x) => Return.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
