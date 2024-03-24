import 'package:dio/dio.dart';
import '../../models/index.dart';
import 'base_batch_jobs.dart';

class BatchJobsRepository extends BaseBatchJobs {
  BatchJobsRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _batchJobs = '/batch-jobs';
  @override
  Future<BatchJob?> cancelBatchJob(String id) async {
    try {
      final response = await _dio.post('$_batchJobs/$id/cancel');
      if (response.statusCode == 200) {
        return BatchJob.fromJson(response.data['batch_job']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<BatchJob?> confirmBatchJob(String id) async {
    try {
      final response = await _dio.post('$_batchJobs/$id/confirm');
      if (response.statusCode == 200) {
        return BatchJob.fromJson(response.data['batch_job']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<BatchJob?> createBatchJob(BatchJobCreateReq batchJobCreateReq) async {
    try {
      final response =
          await _dio.post(_batchJobs, data: batchJobCreateReq.toJson());
      if (response.statusCode == 201) {
        return BatchJob.fromJson(response.data['batch_job']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<BatchJob?> retrieveBatchJob(String id) async {
    try {
      final response = await _dio.get('$_batchJobs/$id');
      if (response.statusCode == 200) {
        return BatchJob.fromJson(response.data['batch_job']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  @override
  Future<BatchJobsRes?> retrieveBatchJobs(
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await _dio.get(_batchJobs, queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return BatchJobsRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
