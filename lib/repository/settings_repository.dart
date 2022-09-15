import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/datasource/shared_prefs_data_source.dart';
import 'package:imagesearchgallery/entity/sort_order.dart';
import 'package:imagesearchgallery/repository/sort_order_mapper.dart';

final settingsRepositoryProvider = Provider.autoDispose<SettingsRepository>((ref) => SharedPrefsSettingsRepository(ref.read));


abstract class SettingsRepository {
  Future<SortOrder?> getSortOrder();

  Future<bool> setSortOrder(SortOrder sortOrder);
}

class SharedPrefsSettingsRepository implements SettingsRepository {
  final Reader read;
  SharedPrefsSettingsRepository(this.read);

  @override
  Future<SortOrder?> getSortOrder() async {
    final sharedPrefs = read(sharedPrefsDataSourceProvider);
    final sortOrderString = await sharedPrefs.getSortOrder();
    if (sortOrderString == null) {
      return null;
    }
    return SortOrderMapper().stringToSortOrder(sortOrderString);
  }

  @override
  Future<bool> setSortOrder(SortOrder sortOrder) {
    final sharedPrefs = read(sharedPrefsDataSourceProvider);
    return sharedPrefs.updateSortOrder(SortOrderMapper().sortOrderToString(sortOrder));
  }

}