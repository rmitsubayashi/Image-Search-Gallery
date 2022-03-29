import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/entity/saved_image.dart';

final selectedSavedImageProvider = StateProvider<SavedImage?>((ref) => null);

final selectedSavedImageNotifier = Provider.autoDispose((ref) => SelectedSavedImageNotifier(ref));

class SelectedSavedImageNotifier extends StateNotifier<SavedImage?> {
  SelectedSavedImageNotifier(this.ref): super(null);

  final Ref ref;

  void select(SavedImage image) {
    ref.read(selectedSavedImageProvider.notifier).state = image;
  }
}