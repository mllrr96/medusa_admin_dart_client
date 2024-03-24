import '../index.dart';


class NotesRes  {
  final List<Note>? notes;
  final int? limit;
  final int? offset;
  final int? count;
  const NotesRes({this.notes, this.limit, this.offset, this.count});
  factory NotesRes.fromJson(Map<String, dynamic> json) {
    return NotesRes(
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

class DeleteNoteRes {
  /// The ID of the deleted Note.
  final String? id;

  /// The type of the object that was deleted.
  ///
  /// Default: "note"
  final String? object;

  /// Whether or not the Note was deleted.
  final bool deleted;
  const DeleteNoteRes({required this.deleted, this.id, this.object});
  factory DeleteNoteRes.fromJson(json) {
    return DeleteNoteRes(deleted: json['deleted'] ?? false, id: json['id'], object: json['object']);
  }
}
