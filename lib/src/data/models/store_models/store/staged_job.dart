class StagedJob {
  final String? id;
  final String? eventName;
  final Map<String, dynamic>? data;

  const StagedJob({
    this.id,
    required this.eventName,
    this.data,
  });

  factory StagedJob.fromJson(Map<String, dynamic> json) {
    return StagedJob(
      id: json['id'],
      eventName: json['event_name'],
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id;
    }
    if (eventName != null) {
      json['event_name'] = eventName;
    }
    if (data != null) {
      json['data'] = data;
    }
    return json;
  }
}
