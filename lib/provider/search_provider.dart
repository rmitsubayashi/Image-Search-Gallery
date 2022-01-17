import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/entity/image_search_result.dart';
import 'package:imagesearchgallery/repository/search_repository.dart';

final searchResultLinkProvider = FutureProvider<List<String>?>((ref) async {
  final searchTerm = ref.read(searchTermProvider);
  if (searchTerm == "") return null;

  final prevResult = ref.read(_prevSearchResultProvider);

  List<String> newLinks;
  if (prevResult.searchTerm != searchTerm) {
    ref.read(prevLinksCacheProvider.notifier).state = null;
    final newResult = await ref.read(searchRepository).search(searchTerm, 0);
    ref.read(_prevSearchResultProvider.notifier).state =
        _CurrentSearchResult(searchTerm, [newResult]);
    newLinks = newResult.links;
  } else {
    // loading more
    final nextIndex = prevResult.results.last.nextStartingIndex;
    if (nextIndex == -1) {
      return prevResult.results.map((e) => e.links).expand((e) => e).toList();
    }
    final loadMoreResult =
        await ref.read(searchRepository).search(searchTerm, nextIndex);
    final newResult = prevResult.results;
    newResult.add(loadMoreResult);
    ref.read(_prevSearchResultProvider.notifier).state =
        _CurrentSearchResult(searchTerm, newResult);
    newLinks = newResult.map((e) => e.links).expand((e) => e).toList();
  }
  ref.read(prevLinksCacheProvider.notifier).state = newLinks;
  return newLinks;
});

final _prevSearchResultProvider = StateProvider<_CurrentSearchResult>(
    (ref) => _CurrentSearchResult("", List.empty()));

final prevLinksCacheProvider = StateProvider<List<String>?>((ref) => null);

final searchTermProvider = StateProvider<String>((ref) => "");

final searchStateNotifier =
    Provider.autoDispose((ref) => SearchStateNotifier(ref));

class SearchStateNotifier extends StateNotifier<String> {
  SearchStateNotifier(this.ref) : super("");

  final Ref ref;

  Future<void> search(String searchTerm) async {
    ref.read(searchTermProvider.notifier).state = searchTerm;
    ref.refresh(searchResultLinkProvider);
  }

  Future<void> loadMore() async {
    ref.refresh(searchResultLinkProvider);
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
