// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/data/models/store_models/store/batch_job.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BatchJobCWProxy {
  BatchJob id(String? id);

  BatchJob type(BatchJobType? type);

  BatchJob status(BatchJobStatus? status);

  BatchJob createdBy(String? createdBy);

  BatchJob createdByUser(User? createdByUser);

  BatchJob context(dynamic context);

  BatchJob result(BatchJobResult? result);

  BatchJob dryRun(bool? dryRun);

  BatchJob preProcessedAt(DateTime? preProcessedAt);

  BatchJob processingAt(DateTime? processingAt);

  BatchJob confirmedAt(DateTime? confirmedAt);

  BatchJob completedAt(DateTime? completedAt);

  BatchJob canceledAt(DateTime? canceledAt);

  BatchJob failedAt(DateTime? failedAt);

  BatchJob createdAt(DateTime? createdAt);

  BatchJob updatedAt(DateTime? updatedAt);

  BatchJob deletedAt(DateTime? deletedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BatchJob(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BatchJob(...).copyWith(id: 12, name: "My name")
  /// ````
  BatchJob call({
    String? id,
    BatchJobType? type,
    BatchJobStatus? status,
    String? createdBy,
    User? createdByUser,
    dynamic context,
    BatchJobResult? result,
    bool? dryRun,
    DateTime? preProcessedAt,
    DateTime? processingAt,
    DateTime? confirmedAt,
    DateTime? completedAt,
    DateTime? canceledAt,
    DateTime? failedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBatchJob.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBatchJob.copyWith.fieldName(...)`
class _$BatchJobCWProxyImpl implements _$BatchJobCWProxy {
  const _$BatchJobCWProxyImpl(this._value);

  final BatchJob _value;

  @override
  BatchJob id(String? id) => this(id: id);

  @override
  BatchJob type(BatchJobType? type) => this(type: type);

  @override
  BatchJob status(BatchJobStatus? status) => this(status: status);

  @override
  BatchJob createdBy(String? createdBy) => this(createdBy: createdBy);

  @override
  BatchJob createdByUser(User? createdByUser) =>
      this(createdByUser: createdByUser);

  @override
  BatchJob context(dynamic context) => this(context: context);

  @override
  BatchJob result(BatchJobResult? result) => this(result: result);

  @override
  BatchJob dryRun(bool? dryRun) => this(dryRun: dryRun);

  @override
  BatchJob preProcessedAt(DateTime? preProcessedAt) =>
      this(preProcessedAt: preProcessedAt);

  @override
  BatchJob processingAt(DateTime? processingAt) =>
      this(processingAt: processingAt);

  @override
  BatchJob confirmedAt(DateTime? confirmedAt) => this(confirmedAt: confirmedAt);

  @override
  BatchJob completedAt(DateTime? completedAt) => this(completedAt: completedAt);

  @override
  BatchJob canceledAt(DateTime? canceledAt) => this(canceledAt: canceledAt);

  @override
  BatchJob failedAt(DateTime? failedAt) => this(failedAt: failedAt);

  @override
  BatchJob createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  BatchJob updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  BatchJob deletedAt(DateTime? deletedAt) => this(deletedAt: deletedAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BatchJob(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BatchJob(...).copyWith(id: 12, name: "My name")
  /// ````
  BatchJob call({
    Object? id = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? createdBy = const $CopyWithPlaceholder(),
    Object? createdByUser = const $CopyWithPlaceholder(),
    Object? context = const $CopyWithPlaceholder(),
    Object? result = const $CopyWithPlaceholder(),
    Object? dryRun = const $CopyWithPlaceholder(),
    Object? preProcessedAt = const $CopyWithPlaceholder(),
    Object? processingAt = const $CopyWithPlaceholder(),
    Object? confirmedAt = const $CopyWithPlaceholder(),
    Object? completedAt = const $CopyWithPlaceholder(),
    Object? canceledAt = const $CopyWithPlaceholder(),
    Object? failedAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
  }) {
    return BatchJob(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as BatchJobType?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BatchJobStatus?,
      createdBy: createdBy == const $CopyWithPlaceholder()
          ? _value.createdBy
          // ignore: cast_nullable_to_non_nullable
          : createdBy as String?,
      createdByUser: createdByUser == const $CopyWithPlaceholder()
          ? _value.createdByUser
          // ignore: cast_nullable_to_non_nullable
          : createdByUser as User?,
      context: context == const $CopyWithPlaceholder() || context == null
          ? _value.context
          // ignore: cast_nullable_to_non_nullable
          : context as dynamic,
      result: result == const $CopyWithPlaceholder()
          ? _value.result
          // ignore: cast_nullable_to_non_nullable
          : result as BatchJobResult?,
      dryRun: dryRun == const $CopyWithPlaceholder()
          ? _value.dryRun
          // ignore: cast_nullable_to_non_nullable
          : dryRun as bool?,
      preProcessedAt: preProcessedAt == const $CopyWithPlaceholder()
          ? _value.preProcessedAt
          // ignore: cast_nullable_to_non_nullable
          : preProcessedAt as DateTime?,
      processingAt: processingAt == const $CopyWithPlaceholder()
          ? _value.processingAt
          // ignore: cast_nullable_to_non_nullable
          : processingAt as DateTime?,
      confirmedAt: confirmedAt == const $CopyWithPlaceholder()
          ? _value.confirmedAt
          // ignore: cast_nullable_to_non_nullable
          : confirmedAt as DateTime?,
      completedAt: completedAt == const $CopyWithPlaceholder()
          ? _value.completedAt
          // ignore: cast_nullable_to_non_nullable
          : completedAt as DateTime?,
      canceledAt: canceledAt == const $CopyWithPlaceholder()
          ? _value.canceledAt
          // ignore: cast_nullable_to_non_nullable
          : canceledAt as DateTime?,
      failedAt: failedAt == const $CopyWithPlaceholder()
          ? _value.failedAt
          // ignore: cast_nullable_to_non_nullable
          : failedAt as DateTime?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      deletedAt: deletedAt == const $CopyWithPlaceholder()
          ? _value.deletedAt
          // ignore: cast_nullable_to_non_nullable
          : deletedAt as DateTime?,
    );
  }
}

extension $BatchJobCopyWith on BatchJob {
  /// Returns a callable class that can be used as follows: `instanceOfBatchJob.copyWith(...)` or like so:`instanceOfBatchJob.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BatchJobCWProxy get copyWith => _$BatchJobCWProxyImpl(this);
}
