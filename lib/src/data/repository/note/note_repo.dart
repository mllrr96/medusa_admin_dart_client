import 'package:dio/dio.dart';
import 'base_note.dart';
import '../../../../medusa_admin.dart';

class NoteRepository extends BaseNote {
  NoteRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _notes = '/notes';

  /// Creates a Note which can be associated with any resource as required.
  @override
  Future<Note?> createNote({
    /// The ID of the resource which the Note relates to.
    required String resourceId,

    /// The type of resource which the Note relates to.
    required String resourceType,

    /// The content of the Note to create.
    required String value,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(_notes, data: {
        'resource_id': resourceId,
        'resource_type': resourceType,
        'value': value,
      });
      if (response.statusCode == 200) {
        return Note.fromJson(response.data['note']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Deletes a Note
  @override
  Future<DeleteNoteRes?> deleteNote({
    /// The ID of the Note to delete.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.delete(
        '$_notes/$id',
      );
      if (response.statusCode == 200) {
        return DeleteNoteRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a single note using its id
  @override
  Future<Note?> retrieveNote({
    /// The ID of the note to retrieve.
    required String id,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        '$_notes/$id',
      );
      if (response.statusCode == 200) {
        return Note.fromJson(response.data['note']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Retrieves a single note using its id
  @override
  Future<NotesRes?> retrieveNotes({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.get(
        _notes,
        queryParameters: queryParameters,
      );
      if (response.statusCode == 200) {
        return NotesRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Updates a Note associated with some resource
  @override
  Future<Note?> updateNote({
    /// The ID of the Note to update
    required String id,

    /// The updated description of the Note.
    required String value,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response = await _dio.post(
        '$_notes/$id',
        data: {'value': value},
      );
      if (response.statusCode == 200) {
        return Note.fromJson(response.data['note']);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
