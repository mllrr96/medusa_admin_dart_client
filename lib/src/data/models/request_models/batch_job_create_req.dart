class BatchJobCreateReq {
  /// The type of batch job to start, which is defined by the batchtype property of the associated batch job strategy.
  ///
  /// Example: "product-export"
  final String type;

  /// Additional infomration regarding the batch to be used for processing.
  ///
  /// Example: {"shape":{"prices":[{"region":null,"currency_code":"eur"}],"dynamicImageColumnCount":4,
  /// "dynamicOptionColumnCount":2},"list_config":{"skip":0,"take":50,"order":{"created_at":"DESC"},
  /// "relations":["variants","variant.prices","images"]}}
  ///
  final Map<String, dynamic> context;

  /// Set a batch job in dry_run mode, which would delay executing the batch job until it's confirmed.
  ///
  /// Default: false
  final bool dryRun;

  const BatchJobCreateReq(
      {required this.type, required this.context, this.dryRun = false});

  Map<String, dynamic> toJson() => {
        'type': type,
        'context': context,
        'dry_run': dryRun,
      };
}
