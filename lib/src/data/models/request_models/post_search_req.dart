class PostSearchReq {
  final String? q;
  final int? offset;
  final int? limit;
  final String? filter;

  const PostSearchReq({this.q, this.offset, this.limit, this.filter});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['q'] = q;
    data['offset'] = offset;
    data['limit'] = limit;
    data['filter'] = filter;
    return data;
  }
}
