import '../index.dart';

class AuthRes {
  final User? user;

  const AuthRes({this.user});

  factory AuthRes.fromJson(Map<String, dynamic> json) {
    return AuthRes(user: json['user'] != null ? User.fromJson(json['user']) : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["user"] = user?.toJson();
    return data;
  }
}
