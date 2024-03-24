import '../index.dart';

class RetrieveProductTypesRes {
  final List<ProductType>? productTypes;
  final int? limit;
  final int? offset;
  final int? count;
  const  RetrieveProductTypesRes(
      {this.productTypes, this.limit, this.offset, this.count});
  factory RetrieveProductTypesRes.fromJson(Map<String, dynamic> json) {
    return RetrieveProductTypesRes(
      productTypes: json['product_types'] != null
          ? List<ProductType>.from(
              json['product_types'].map((x) => ProductType.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
