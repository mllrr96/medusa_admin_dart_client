import 'user.dart';
import '../../../enum/enums.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/batch_job.g.dart';

@CopyWith()
class BatchJob {
  /// The unique identifier for the batch job.
  ///
  /// Example: "batch_01G8T782965PYFG0751G0Z38B4"Copy to Clipboard
  final String? id;

  /// The type of batch job.
  final BatchJobType? type;

  /// The status of the batch job.
  final BatchJobStatus? status;

  /// The unique identifier of the user that created the batch job.
  ///
  /// Example: "usr_01G1G5V26F5TB3GPAPNJ8X1S3V"
  final String? createdBy;

  /// The details of the user that created the batch job.
  final User? createdByUser;

  /// The context of the batch job, the type of the batch job determines what the context should contain.
  final Map<String, dynamic>? context;

  final BatchJobResult? result;

  // Specify if the job must apply the modifications or not.
  final bool? dryRun;

  // The date from which the job has been pre-processed.
  final DateTime? preProcessedAt;

  /// The date the job is processing at.
  final DateTime? processingAt;

  /// The date when the confirmation has been done.
  final DateTime? confirmedAt;

  /// The date when the job was completed.
  final DateTime? completedAt;

  /// The date when the job was canceled.
  final DateTime? canceledAt;

  /// The date when the job failed.
  final DateTime? failedAt;

  /// The date with timezone at which the resource was created.
  final DateTime? createdAt;

  /// The date with timezone at which the resource was last updated.
  final DateTime? updatedAt;

  /// The date with timezone at which the resource was deleted.
  final DateTime? deletedAt;

  const BatchJob({
    this.id,
    this.type,
    this.status,
    this.createdBy,
    this.createdByUser,
    this.context,
    this.result,
    this.dryRun,
    this.preProcessedAt,
    this.processingAt,
    this.confirmedAt,
    this.completedAt,
    this.canceledAt,
    this.failedAt,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory BatchJob.fromJson(Map<String, dynamic> json) {
    return BatchJob(
      id: json['id'],
      type: json['type'] != null
          ? BatchJobType.values
              .where((e) => e.value == (json['type'] ?? ''))
              .firstOrNull
          : null,
      status: BatchJobStatus.values.firstWhere(
          (e) => e.value == (json['status'] ?? ''),
          orElse: () => BatchJobStatus.created),
      createdBy: json['created_by'],
      createdByUser: json['created_by_user'] != null
          ? User.fromJson(json['created_by_user'])
          : null,
      context: json['context'],
      result: json['result'] != null
          ? BatchJobResult.fromJson(json['result'])
          : null,
      dryRun: json['dry_run'],
      preProcessedAt:
          DateTime.tryParse(json['pre_processed_at'] ?? '')?.toLocal(),
      processingAt: DateTime.tryParse(json['processing_at'] ?? '')?.toLocal(),
      confirmedAt: DateTime.tryParse(json['confirmed_at'] ?? '')?.toLocal(),
      completedAt: DateTime.tryParse(json['completed_at'] ?? '')?.toLocal(),
      canceledAt: DateTime.tryParse(json['canceled_at'] ?? '')?.toLocal(),
      failedAt: DateTime.tryParse(json['failed_at'] ?? '')?.toLocal(),
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? '')?.toLocal(),
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['id'] = id;
    json['type'] = type?.value;
    json['status'] = status?.value;
    json['created_by'] = createdBy;
    json['created_by_user'] = createdByUser?.toJson();
    json['dry_run'] = dryRun;
    json['pre_processed_at'] = preProcessedAt.toString();
    json['processing_at'] = processingAt.toString();
    json['confirmed_at'] = confirmedAt.toString();
    json['completed_at'] = completedAt.toString();
    json['canceled_at'] = canceledAt.toString();
    json['failed_at'] = failedAt.toString();
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['deleted_at'] = deletedAt.toString();
    return json;
  }
}

class BatchJobResult {
  final num? count;
  final num? advancementCount;
  final num? progress;
  final String? fileKey;
  final num? fileSize;
  final StatDescriptors? statDescriptors;
  final BatchJobError? error;
  const BatchJobResult(
      {this.count,
      this.advancementCount,
      this.progress,
      this.fileKey,
      this.fileSize,
      this.statDescriptors,
      this.error});

  factory BatchJobResult.fromJson(Map<String, dynamic> json) {
    return BatchJobResult(
      count: json['count'],
      advancementCount: json['advancement_count'],
      progress: json['progress'],
      fileKey: json['file_key'],
      fileSize: json['file_size'],
      statDescriptors: json['stat_descriptors'] != null
          ? StatDescriptors.fromJson(json['stat_descriptors'])
          : null,
      error:
          json['error'] != null ? BatchJobError.fromJson(json['error']) : null,
    );
  }
}

class StatDescriptors {
  final String? key;
  final String? name;
  final String? message;
  const StatDescriptors({this.key, this.name, this.message});

  factory StatDescriptors.fromJson(Map<String, dynamic> json) {
    return StatDescriptors(
      key: json['key'],
      name: json['name'],
      message: json['message'],
    );
  }
}

class BatchJobError {
  final String? message;
  final dynamic code;
  BatchJobError({this.message, this.code});
  factory BatchJobError.fromJson(Map<String, dynamic> json) {
    return BatchJobError(
      message: json['message'],
      code: json['code'],
    );
  }
}
