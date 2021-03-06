
import 'package:cached_network_image/cached_network_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/entity/saved_image.dart';
import 'package:imagesearchgallery/repository/saved_images_repository.dart';


final filteredImagesProvider = FutureProvider<List<SavedImage>>((ref) async {
  final originalList = await ref.watch(savedImagesProvider.future);
  final listCopy = List<SavedImage>.from(originalList);
  listCopy.sort((imageA, imageB) => imageA.label.compareTo(imageB.label));
  final newlyAddedImage = ref.watch(newlyAddedImageProvider);

  if (newlyAddedImage == null) {
    return listCopy;
  }

  listCopy.removeWhere((element) => element.id == newlyAddedImage.id);
  listCopy.insert(0, newlyAddedImage.copyWith());
  return listCopy;

});

final savedImagesProvider = FutureProvider<List<SavedImage>>((ref) async {
  return await ref.read(savedImagesRepositoryProvider).getAll();
});

final newlyAddedImageProvider = StateProvider<SavedImage?>((ref) => null);

final lastDeletedImageProvider = StateProvider<SavedImage?>((ref) => null);

final savedImageNotifierProvider = Provider.autoDispose((ref) => SavedImageNotifier(ref));

class SavedImageNotifier extends StateNotifier<SavedImage?> {
  SavedImageNotifier(this.ref): super(null);

  final Ref ref;

  Future<bool> delete(SavedImage image) async {
    final result = await ref.read(savedImagesRepositoryProvider).delete(image);
    await CachedNetworkImage.evictFromCache(image.url);
    ref.read(lastDeletedImageProvider.notifier).state = image;
    final newlyAddedImage = ref.read(newlyAddedImageProvider);
    if (newlyAddedImage?.id == image.id) {
      ref.read(newlyAddedImageProvider.notifier).state = null;
    }
    ref.refresh(savedImagesProvider);
    return result;
  }

  Future<bool> rename(SavedImage image, String newLabel) async {
    final result = await ref.read(savedImagesRepositoryProvider).updateLabel(image, newLabel);
    final newlyAddedImage = ref.read(newlyAddedImageProvider);
    if (newlyAddedImage?.id == image.id) {
      ref.read(newlyAddedImageProvider.notifier).state = newlyAddedImage?.copyWith(label: newLabel);
    }
    ref.refresh(savedImagesProvider);
    return result;
  }

  Future<bool> undoDelete() async {
    final lastDeletedImage = ref.read(lastDeletedImageProvider);
    if (lastDeletedImage == null) return false;
    final saveRepository = ref.read(savedImagesRepositoryProvider);
    await saveRepository.save(lastDeletedImage.label, lastDeletedImage.url).then((value) =>
        refreshNewlySavedImage(value));
    return true;
  }

  void refreshNewlySavedImage(SavedImage newImage) {
    ref.read(newlyAddedImageProvider.notifier).state = newImage;
    ref.refresh(savedImagesProvider);
  }
}