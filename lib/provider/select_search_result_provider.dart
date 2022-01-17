import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/entity/saved_image.dart';
import 'package:imagesearchgallery/provider/saved_images_provider.dart';
import 'package:imagesearchgallery/repository/saved_images_repository.dart';

final selectedSearchResultProvider = StateProvider<SelectedSearchResult>((ref) => EmptySelectedSearchResult());

class SelectedSearchResult {
  String searchTerm;
  String url;

  SelectedSearchResult({required this.searchTerm, required this.url});
}

class EmptySelectedSearchResult extends SelectedSearchResult {
  EmptySelectedSearchResult() : super(searchTerm: "", url: "");
}

final selectSearchResultStateNotifier = Provider.autoDispose((ref) => SelectSearchResultStateNotifier(ref));

class SelectSearchResultStateNotifier extends StateNotifier<SelectedSearchResult> {
  SelectSearchResultStateNotifier(this.ref): super(EmptySelectedSearchResult());

  final Ref ref;

  void select(SelectedSearchResult result) {
    ref.read(selectedSearchResultProvider.notifier).state = result;
  }

  Future<bool> saveCurrentlySelectedSearchResult() async {
    final result = ref.read(selectedSearchResultProvider);
    if (result is EmptySelectedSearchResult) {
      return false;
    }
    final saveRepository = ref.read(savedImagesRepositoryProvider);
    await saveRepository.save(result.searchTerm, result.url).then((value) =>
      refreshSavedImage(value));

    return true;
  }

  void refreshSavedImage(SavedImage newImage) {
    ref.read(newlyAddedImageProvider.notifier).state = newImage;
    ref.refresh(savedImagesProvider);
  }
}