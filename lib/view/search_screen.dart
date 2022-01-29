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
                    itemCount: searchResult.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        child: Hero(
                            tag: "tag_${searchResult[index]}",
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: searchResult[index],
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

  StaggeredGridView searchResultView(
      ScrollController controller,
      List<String> links,
      BuildContext context,
      WidgetRef ref,
      String searchTerm) {
    return StaggeredGridView.countBuilder(
      controller: controller,
      crossAxisCount: 4,
      itemCount: links.length,
      itemBuilder: (_, index) {
        return InkWell(
          child: Hero(
              tag: "tag_${links[index]}",
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: links[index],
                fit: BoxFit.scaleDown,
              )),
          onTap: () {
            ref.read(selectSearchResultStateNotifier).select(
                SelectedSearchResult(
                    searchTerm: searchTerm, url: links[index]));
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SelectedSearchResultScreen()));
          },
        );
      },
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
    );
  }
}
