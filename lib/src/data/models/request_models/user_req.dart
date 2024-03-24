import '../../enum/enums.dart';

class UpdateUserReq {
  String? firstName;
  String? lastName;

  /// User role assigned to the user.
  ///
  /// Enum: "admin" "member" "developer"
  UserRole? role;

  /// The api token of the User.
  String? apiToken;

  /// An optional set of key-value pairs with additional information.
  Map<String, dynamic>? metadata;

  UpdateUserReq(
      {this.firstName, this.lastName, this.role, this.apiToken, this.metadata});

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    if (firstName != null) {
      data['first_name'] = firstName;
    }

    if (lastName != null) {
      data['last_name'] = lastName;
    }

    if (role != null) {
      data['role'] = role.toString();
    }

    if (apiToken != null) {
      data['api_token'] = apiToken;
    }

    if (metadata != null) {
      data['metadata'] = metadata;
    }
    return data;
  }
}

class CreateUserReq {
  /// Email address of the user
  final String email;

  /// Password of the user
  final String password;

  /// The first name of the User.
  final String? firstName;

  /// The last name of the User.
  final String? lastName;

  /// User role assigned to the user.
  ///
  /// Enum: "admin" "member" "developer"
  final UserRole? role;

  const CreateUserReq({
    required this.email,
    required this.password,
    this.firstName,
    this.lastName,
    this.role,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    if (firstName != null) {
      data['first_name'] = firstName;
    }
    if (lastName != null) {
      data['last_name'] = lastName;
    }
    if (role != null) {
      data['role'] = role?.value;
    }

    return data;
  }
}
