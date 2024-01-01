import '../index.dart';

class UserRetrieveReturnsRes {
  final List<Return>? returns;
  final int? limit;
  final int? offset;
  final int? count;
  const  UserRetrieveReturnsRes({this.returns, this.limit, this.offset, this.count});
  factory UserRetrieveReturnsRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveReturnsRes(
      returns: json['returns'] != null
          ? List<Return>.from(json['returns'].map((x) => Return.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
