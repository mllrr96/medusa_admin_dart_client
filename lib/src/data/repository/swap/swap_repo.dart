import 'package:dio/dio.dart';
import 'base_swap.dart';
import '../../models/index.dart';

class SwapRepository extends BaseSwap {
  SwapRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _swaps = '/swaps';

  /// Cancels a Swap
  @override
  Future<Order> cancelSwap({
    /// The ID of the Order.
    required String id,

    /// The ID of the Swap to cancel.
    required String swapId,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/orders/$id$_swaps/$swapId/cancel',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Creates a Swap.
  ///
  /// Swaps are used to handle Return of previously purchased goods and Fulfillment of replacements simultaneously.
  @override
  Future<Order?> createSwap({
    /// The ID of the Order.
    required String id,
    required CreateSwapSwapReq userCreateSwapSwapReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/order/$id$_swaps',
        data: userCreateSwapSwapReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Registers a Swap Fulfillment as shipped.
  @override
  Future<Order?> createSwapShipment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Swap.
    required String swapId,
    required CreateSwapShipmentSwapReq userCreateSwapShipmentSwapReq,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/orders/$id$_swaps/$swapId/shipments',
        data: userCreateSwapShipmentSwapReq.toJson(),
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// When there are differences between the returned and shipped Products in a Swap, the difference must be processed.
  /// Either a Refund will be issued or a Payment will be captured.
  @override
  Future<Order?> processSwapPayment({
    /// The ID of the Order.
    required String id,

    /// The ID of the Swap.
    required String swapId,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '/orders/$id$_swaps/$swapId/process-payment',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Order.fromJson(response.data['order']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a Swap.
  @override
  Future<Swap?> retrieveSwap({
    /// The ID of the Swap.
    required String swapId,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_swaps/$swapId',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return Swap.fromJson(response.data['swap']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a list of Swaps.
  @override
  Future<RetrieveSwapsRes?> retrieveSwaps({
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _swaps,
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        return RetrieveSwapsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
