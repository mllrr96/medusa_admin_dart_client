import '../../models/index.dart';

abstract class BaseProducts {
  Future<ProductsListRes?> retrieveAll(
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? customHeaders});

  Future<Product?> retrieve(String id,
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters});

  Future<List<ProductVariant>?> retrieveVariants(
      {Map<String, dynamic>? customHeaders,
      Map<String, dynamic>? queryParameters});

  Future<PostSearchRes?> search(
      {PostSearchReq? req, Map<String, dynamic>? customHeaders});

  Future<Product?> add(
      {required PostProductReq userPostProductReq,
      Map<String, dynamic>? customHeaders});

  Future<DeleteProductRes?> delete(
      {required String id, Map<String, dynamic>? customHeaders});

  Future<Product?> update(
      {required PostUpdateProductReq userPostUpdateProductReq,
      required String id,
      Map<String, dynamic>? customHeaders});
}
