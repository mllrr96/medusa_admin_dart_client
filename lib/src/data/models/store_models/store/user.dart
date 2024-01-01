import '../../../enum/enums.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part '../../../../../generated/src/data/models/store_models/store/user.g.dart';

@CopyWith()
class User {
  /// The user's ID
  final String? id;

  /// The email of the User
  final String? email;

  /// The first name of the User
  final String? firstName;

  /// The last name of the User
  final String? lastName;

  /// An API token associated with the user.
  final String? apiToken;

  /// The date with timezone at which the resource was created.
  final DateTime? createdAt;

  /// The date with timezone at which the resource was updated.
  final DateTime? updatedAt;

  /// The date with timezone at which the resource was deleted.
  final DateTime? deletedAt;

  /// The user's role
  ///
  /// Default: "member"
  ///
  /// Enum: "admin" "member" "developer"
  final UserRole? role;

  /// An optional key-value map with additional details
  ///
  /// Example: {"car":"white"}
  final Map<String, dynamic>? metadata;

  const User( {
    this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.apiToken,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
    this.role = UserRole.member,
  });

 factory User.fromJson(Map<String, dynamic> json) {
   return User(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      apiToken: json['api_token'],
      createdAt: DateTime.tryParse(json['created_at'] ?? '')?.toLocal(),
      updatedAt: DateTime.tryParse(json['updated_at'] ?? '')?.toLocal(),
      deletedAt: DateTime.tryParse(json['deleted_at'] ?? '')?.toLocal(),
      role: UserRole.fromString(json['role']),
      metadata: json['metadata'],
   );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['id'] = id;
    json['email'] = email;
    json['first_name'] = firstName;
    json['last_name'] = lastName;
    json['api_token'] = apiToken;
    json['created_at'] = createdAt.toString();
    json['updated_at'] = updatedAt.toString();
    json['deleted_at'] = deletedAt.toString();
    json['metadata'] = metadata;
    return json;
  }
}
