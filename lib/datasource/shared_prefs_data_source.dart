
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefsDataSourceProvider = Provider((ref) => SharedPrefsDataSource());

class SharedPrefsDataSource {
  static const String _sortOrderKey = "sortOrder";

  Future<bool> updateSortOrder(String sortOrder) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(_sortOrderKey, sortOrder);
  }

  Future<String?> getSortOrder() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_sortOrderKey);
  }
}