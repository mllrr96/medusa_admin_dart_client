import '../index.dart';

class UserAuthRes {
  final User? user;

  UserAuthRes({this.user});

  factory UserAuthRes.fromJson(Map<String, dynamic> json) {
    return UserAuthRes(user: json['user'] != null ? User.fromJson(json['user']) : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["user"] = user?.toJson();
    return data;
  }
}
