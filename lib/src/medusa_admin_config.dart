class MedusaConfig {
  ///
  /// Base url which is used to connect to medusa backend
  ///
  final String baseUrl;

  ///
  /// Use a user's API Token to send authenticated requests.
  /// for more info see: https://docs.medusa-commerce.com/docs/api/authentication
  ///
  final String? apiToken;
  final bool? enableDebugging;

  /// Authentication type to use for requests
  /// for more info see: https://docs.medusa-commerce.com/docs/api/authentication
  ///
  final AuthenticationType authenticationType;

  MedusaConfig( {
    required this.baseUrl,
    this.authenticationType = AuthenticationType.jwt,
    this.apiToken,
    this.enableDebugging,
  });
}

enum AuthenticationType {
  cookie,
  token,
  jwt;

  @override
  String toString() {
    switch (this) {
      case AuthenticationType.cookie:
        return 'Cookie';
      case AuthenticationType.token:
        return 'Api Token';
      case AuthenticationType.jwt:
        return 'JWT';
    }
  }
}
