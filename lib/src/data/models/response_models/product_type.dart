import '../index.dart';

class UserRetrieveProductTypesRes {
  final List<ProductType>? productTypes;
  final int? limit;
  final int? offset;
  final int? count;
  const  UserRetrieveProductTypesRes(
      {this.productTypes, this.limit, this.offset, this.count});
  factory UserRetrieveProductTypesRes.fromJson(Map<String, dynamic> json) {
    return UserRetrieveProductTypesRes(
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
