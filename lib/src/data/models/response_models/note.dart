
import '../index.dart';

class UserNoteRes {
  final Note? note;

  UserNoteRes(this.note);

  factory UserNoteRes.fromJson(Map<String, dynamic> json) {
    return UserNoteRes(json['note'] != null ? Note.fromJson(json['note']) : null);
  }
}

class UserNotesRes  {
  final List<Note>? notes;
  final int? limit;
  final int? offset;
  final int? count;
  UserNotesRes({this.notes, this.limit, this.offset, this.count});
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
  UserDeleteNoteRes({required this.deleted, this.id, this.object});
  factory UserDeleteNoteRes.fromJson(json) {
    return UserDeleteNoteRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}
