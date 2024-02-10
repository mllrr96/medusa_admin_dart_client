import '../../models/index.dart';

abstract class BaseProducts {
  Future<UserProductsListRes?> retrieveAll(
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders});

  Future<Product?> retrieve(String id,
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters});

  Future<List<ProductVariant>?> retrieveVariants(
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters});

  Future<UserPostSearchRes?> search(
      {StorePostSearchReq? req, Map<String, dynamic>? customHeaders});

  Future<Product?> add(
      {required UserPostProductReq userPostProductReq,
      Map<String, dynamic>? customHeaders});

  Future<UserDeleteProductRes?> delete(
      {required String id, Map<String, dynamic>? customHeaders});

  Future<Product?> update(
      {required UserPostUpdateProductReq userPostUpdateProductReq,
      required String id,
      Map<String, dynamic>? customHeaders});
}
