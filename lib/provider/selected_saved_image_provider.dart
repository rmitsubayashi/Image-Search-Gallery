import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/entity/saved_image.dart';
import 'package:imagesearchgallery/provider/saved_images_provider.dart';
import 'package:collection/collection.dart';


final selectedSavedImageIdProvider = StateProvider<int>((ref) => -1);
final selectedSavedImageProvider = StateProvider<SavedImage?>((ref) {
  final id = ref.watch(selectedSavedImageIdProvider);
  final images = ref.watch(savedImagesProvider);
  return images.value?.firstWhereOrNull((element) => element.id == id);
});

final selectedSavedImageNotifier = Provider.autoDispose((ref) => SelectedSavedImageNotifier(ref));

class SelectedSavedImageNotifier extends StateNotifier<SavedImage?> {
  SelectedSavedImageNotifier(this.ref): super(null);

  final Ref ref;

  void select(SavedImage image) {
    ref.read(selectedSavedImageIdProvider.notifier).state = image.id ?? -1;
  }
}