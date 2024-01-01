import 'dart:io';

import '../../models/response_models/upload.dart';

abstract class BaseUpload {
  Future<List<String>?> uploadProtectedFile({
    required List<String> files,
    Map<String, dynamic>? customHeaders,
  });

  Future<List<String>?> uploadFile({
    required List<File> files,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeleteFileRes?> deleteFile({
    required String fileKey,
    Map<String, dynamic>? customHeaders,
  });

  Future<String> getFileUrl({
    required String fileKey,
    Map<String, dynamic>? customHeaders,
  });
}
