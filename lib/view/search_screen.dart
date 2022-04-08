import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:imagesearchgallery/provider/search_provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:imagesearchgallery/provider/select_search_result_provider.dart';
import 'package:imagesearchgallery/view/selected_search_result_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class SearchScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(searchResultLinkProvider);
    final searchTerm = ref.watch(searchTermProvider);
    final searchLoadingState = ref.watch(searchLoadingStateProvider);
    final suggestedWord = ref.watch(suggestedWordProvider);
    final _textFieldController = TextEditingController(text: searchTerm);
    final _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        ref.read(searchStateNotifier).loadMore();
      }
    });
    return Scaffold(
        appBar: AppBar(
            // The search area here
            title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _textFieldController.clear();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
              onSubmitted: (searchTerm) {
                ref.read(searchStateNotifier).search(searchTerm);
              },
              textInputAction: TextInputAction.search,
            ),
          ),
        )),
        body: Stack(
          children: [
            searchResult == null
                ? const Center()
                : StaggeredGridView.countBuilder(
                    controller: _scrollController,
                    crossAxisCount: 4,
                    itemCount: searchResult.length + 1,
                    itemBuilder: (_, index) {
                      if (index == 0) {
                        if (suggestedWord == null) {
                          return const Center();
                        }
                        if (suggestedWord.hasResults) {
                          return Text("searching for ${suggestedWord.suggestion}");
                        } else {
                          return Text("no results. search for ${suggestedWord.suggestion} instead?");
                        }
                      }
                      index -= 1;
                      return InkWell(
                        child: Hero(
                            tag: "tag_${searchResult[index]}",
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: searchResult[index],
                              imageErrorBuilder: (context, error, trace) { return const SizedBox.shrink(); },
                              fit: BoxFit.scaleDown,
                            )),
                        onTap: () {
                          ref.read(selectSearchResultStateNotifier).select(
                              SelectedSearchResult(
                                  searchTerm: searchTerm,
                                  url: searchResult[index]));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SelectedSearchResultScreen()));
                        },
                      );
                    },
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.fit(2),
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),
            searchLoadingState
                ? const Center(child: CircularProgressIndicator())
                : const Center()
          ],
        ));
  }
}
