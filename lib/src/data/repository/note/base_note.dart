import '../../models/index.dart';
import '../../models/response_models/note.dart';

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

  Future<UserDeleteNoteRes?> deleteNote({
    required String id,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserNotesRes?> retrieveNotes({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  });
}
