import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/entity/image_search_result.dart';
import 'package:imagesearchgallery/repository/search_repository.dart';

final searchResultLinkProvider = StateProvider<List<String>?>((ref) {
  return ref.watch(_prevSearchResultProvider).results.map((e) => e.links).expand((e) => e).toList();
});

final searchLoadingStateProvider = StateProvider<bool>((ref) => false);

final _prevSearchResultProvider = StateProvider<_CurrentSearchResult>(
    (ref) => _CurrentSearchResult("", List.empty()));

final searchTermProvider = StateProvider<String>((ref) => "");

final searchStateNotifier =
    Provider.autoDispose((ref) => SearchStateNotifier(ref));

class SearchStateNotifier extends StateNotifier<String> {
  SearchStateNotifier(this.ref) : super("");

  final Ref ref;

  Future<void> search(String searchTerm) async {
    ref.read(searchTermProvider.notifier).state = searchTerm;
    if (searchTerm == "") {
      ref.read(_prevSearchResultProvider.notifier).state = _CurrentSearchResult("", List.empty());
      return;
    }

    final prevResult = ref.read(_prevSearchResultProvider);
    if (prevResult.searchTerm != searchTerm) {
      ref.read(searchLoadingStateProvider.notifier).state = true;
      final newResult = await ref.read(searchRepository).search(searchTerm, 0);
      ref.read(searchLoadingStateProvider.notifier).state = false;
      ref.read(_prevSearchResultProvider.notifier).state =
          _CurrentSearchResult(searchTerm, [newResult]);
    }
    // ref.refresh(searchResultLinkProvider);
  }

  Future<void> loadMore() async {
    final prevResult = ref.read(_prevSearchResultProvider);
    final nextIndex = prevResult.results.last.nextStartingIndex;
    if (nextIndex == -1) {
      return;
    }
    final searchTerm = ref.read(searchTermProvider);
    ref.read(searchLoadingStateProvider.notifier).state = true;
    final loadMoreResult = await ref.read(searchRepository).search(searchTerm, nextIndex);
    ref.read(searchLoadingStateProvider.notifier).state = false;
    final newResult = prevResult.results;
    newResult.add(loadMoreResult);
    ref.read(_prevSearchResultProvider.notifier).state =
        _CurrentSearchResult(searchTerm, newResult);
  }
}

class _CurrentSearchResult {
  final String searchTerm;
  final List<ImageSearchResult> results;

  _CurrentSearchResult(this.searchTerm, this.results);

  void appendResult(ImageSearchResult result) {
    results.add(result);
  }
}
