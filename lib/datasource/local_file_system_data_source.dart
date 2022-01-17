import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final localFileSystemDataSourceProvider = Provider((ref) => LocalFileSystemDataSource());

class LocalFileSystemDataSource {
  Future<String> save(String url) async {
    final directory = await getApplicationDocumentsDirectory();
    final savePath = "${directory.path}/${url.hashCode}.jpg";
    await Dio().download(url, savePath);
    return savePath;
  }

  // get is done by the UI widget
}