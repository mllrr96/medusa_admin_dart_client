class StorePostSearchReq {
  final String? q;
  final int? offset;
  final int? limit;
  final dynamic filter;

  StorePostSearchReq({this.q, this.offset, this.limit, this.filter});

  factory StorePostSearchReq.fromJson(Map<String, dynamic> json) {
    return StorePostSearchReq(
      q: json['q'],
      offset: json['offset'],
      limit: json['limit'],
      filter: json['filter'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['q'] = q;
    data['offset'] = offset;
    data['limit'] = limit;
    data['filter'] = filter;
    return data;
  }
}
