class MedusaConfig {

  /// Base url which is used to connect to medusa backend
  final String baseUrl;
  final String? apiKey;
  final bool? enableDebugging;

  MedusaConfig({
    required this.baseUrl,
    this.apiKey,
    this.enableDebugging,
  });
}
