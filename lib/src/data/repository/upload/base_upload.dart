import 'dart:io';

import '../../models/response_models/upload.dart';

abstract class BaseUpload {
  Future<UserUploadFileRes?> uploadProtectedFile({
    required List<String> files,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserUploadFileRes?> uploadFile({
    required List<File> files,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserDeleteFileRes?> deleteFile({
    required String fileKey,
    Map<String, dynamic>? customHeaders,
  });

  Future<UserGetFileUrlRes?> getFileUrl({
    required String fileKey,
    Map<String, dynamic>? customHeaders,
  });
}
