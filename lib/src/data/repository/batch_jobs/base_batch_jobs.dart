import '../../models/index.dart';

abstract class BaseBatchJobs {
  Future<BatchJobsRes?> retrieveBatchJobs({Map<String, dynamic>? queryParameters});
  Future<BatchJob?> retrieveBatchJob(String id);
  Future<BatchJob?> createBatchJob(BatchJobCreateReq batchJobCreateReq);
  Future<BatchJob?> cancelBatchJob(String id);
  Future<BatchJob?> confirmBatchJob(String id);
}