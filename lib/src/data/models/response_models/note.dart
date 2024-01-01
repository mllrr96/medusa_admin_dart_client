import '../index.dart';


class UserNotesRes  {
  final List<Note>? notes;
  final int? limit;
  final int? offset;
  final int? count;
  const UserNotesRes({this.notes, this.limit, this.offset, this.count});
  factory UserNotesRes.fromJson(Map<String, dynamic> json) {
    return UserNotesRes(
      notes: json['notes'] != null
          ? List<Note>.from(
              json['notes'].map((x) => Note.fromJson(x)))
          : null,
      limit: json['limit'],
      offset: json['offset'],
      count: json['count'],
    );
  }
}

class UserDeleteNoteRes {
  /// The ID of the deleted Note.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "note"
  final String? object;

  /// Whether or not the Note was deleted.
  final bool deleted;
  const UserDeleteNoteRes({required this.deleted, this.id, this.object});
  factory UserDeleteNoteRes.fromJson(json) {
    return UserDeleteNoteRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}
