import '../store_models/store/batch_job.dart';

class BatchJobsRes {
  final List<BatchJob>? batchJobs;
  final int? limit;
  final int? offset;
  final int? count;
  const BatchJobsRes({this.batchJobs, this.limit, this.offset, this.count});
  factory BatchJobsRes.fromJson(json) {
    return BatchJobsRes(
      batchJobs: json['batch_jobs'] != null
          ? List<BatchJob>.from(
              json['batch_jobs'].map((x) => BatchJob.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}
