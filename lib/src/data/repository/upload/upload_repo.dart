import 'dart:io';
import 'package:dio/dio.dart';
import 'base_upload.dart';
import '../../models/response_models/upload.dart';

class UploadRepository extends BaseUpload {
  UploadRepository(Dio dio) : _dio = dio;
  final Dio _dio;
  static const _uploads = '/uploads';

  /// Removes an uploaded file using the installed file service
  @override
  Future<DeleteFileRes?> deleteFile({
    /// key of the file to delete
    required String fileKey,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.delete(_uploads, data: {'file_key': fileKey});
      if (response.statusCode == 200) {
        return DeleteFileRes.fromJson(response.data);
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Creates a pre-signed download url for a file
  @override
  Future<String> getFileUrl({
    /// key of the file to obtain the download link for
    required String fileKey,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }
      final response =
          await _dio.post('$_uploads/download-url', data: {'file_key': fileKey});
      if (response.statusCode == 200) {
        return response.data['download_url'];
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Uploads at least one file to the specific file service that is installed in Medusa.
  @override
  Future<List<String>?> uploadFile({
    required List<File> files,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }

      List<MultipartFile> multipartFiles = [];

      for (var file in files) {
        String fileName = file.path.split(Platform.pathSeparator).last;
        multipartFiles
            .add(await MultipartFile.fromFile(file.path, filename: fileName));
      }

      FormData formData = FormData.fromMap({"files": multipartFiles});

      final response = await _dio.post(_uploads, data: formData);
      if (response.statusCode == 200) {
        List<String> urls = [];

        for (var e in List<Map<String, dynamic>>.from(response.data['uploads'])) {
          urls.add(e['url']);
        }
        return urls;
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }

  /// Uploads at least one file with ACL or a non-public bucket to the specific file service that is installed in Medusa.
  @override
  Future<List<String>?> uploadProtectedFile({
    required List<File> files,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      if (customHeaders != null) {
        _dio.options.headers.addAll(customHeaders);
      }

      List<MultipartFile> multipartFiles = [];

      for (var file in files) {
        String fileName = file.path.split(Platform.pathSeparator).last;
        multipartFiles
            .add(await MultipartFile.fromFile(file.path, filename: fileName));
      }

      FormData formData = FormData.fromMap({"files": multipartFiles});

      final response = await _dio.post('$_uploads/protected', data: formData);
      if (response.statusCode == 200) {
        List<String> urls = [];

        for (var e in List<Map<String, dynamic>>.from(response.data['uploads'])) {
          urls.add(e['url']);
        }
        return urls;
      } else {
        throw response;
      }
    } catch (_) {

      rethrow;
    }
  }
}
