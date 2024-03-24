import '../../models/index.dart';

abstract class BaseNote {
  Future<Note?> createNote({
    required String resourceId,
    required String resourceType,
    required String value,
    Map<String, dynamic>? customHeaders,
  });

  Future<Note?> retrieveNote({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<Note?> updateNote({
    required String id,
    required String value,
    Map<String, dynamic>? customHeaders,
  });

  Future<DeleteNoteRes?> deleteNote({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<NotesRes?> retrieveNotes({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
