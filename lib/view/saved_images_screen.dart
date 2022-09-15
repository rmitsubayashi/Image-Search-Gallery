import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:imagesearchgallery/entity/sort_order.dart';
import 'package:imagesearchgallery/provider/saved_images_provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:imagesearchgallery/provider/search_provider.dart';
import 'package:imagesearchgallery/provider/selected_saved_image_provider.dart';
import 'package:imagesearchgallery/view/search_screen.dart';
import 'package:imagesearchgallery/view/selected_saved_image_screen.dart';

class SavedImagesScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedImages = ref.watch(filteredImagesProvider);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.sort),
              onPressed: () {
                openSortDialog(ref, context);
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            // so the Search screen can differentiate between adding and updating
            ref.read(savedImageNotifierProvider).clearImageToUpdateUrl();
            // clear previous search
            ref.read(searchStateNotifier).search("");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SearchScreen()));
          },
        ),
        body: savedImages.when(
            error: (err, stack) => const Center(),
            loading: () => const Center(),
            data: (images) => StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  itemCount: images.length,
                  itemBuilder: (_, index) {
                    return Stack(children: [
                      Column(children: [
                        CachedNetworkImage(
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(
                                  color: Colors.black12),
                          imageUrl: images[index].url,
                          fit: BoxFit.scaleDown,
                        ),
                        Text(images[index].label)
                      ]),
                      Positioned.fill(
                          child: Material(
                              color: Colors.transparent,
                              child: InkWell(onTap: () {
                                ref
                                    .read(selectedSavedImageNotifier)
                                    .select(images[index]);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectedSavedImageScreen()));
                              }, onLongPress: () {
                                Clipboard.setData(
                                    ClipboardData(text: images[index].label));
                                Fluttertoast.showToast(
                                    msg: "Copied to clipboard");
                              })))
                    ]);
                  },
                  staggeredTileBuilder: (int index) =>
                      const StaggeredTile.fit(2),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 0,
                )));
  }

  Future<void> openSortDialog(WidgetRef ref, BuildContext context) {
    final currentSortOrder = ref.read(sortOrderProvider).value;
    return showDialog(
        context: context,
        builder: (dialogContext) {
          return SimpleDialog(title: const Text("Sort By"), children: <Widget>[
            SimpleDialogOption(
              child: Text("Alphabetical",
                  style: TextStyle(
                    color: (currentSortOrder == SortOrder.alphabetical)
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).textTheme.bodyText1?.color,
                  )),
              onPressed: () {
                ref
                    .read(sortOrderNotifierProvider)
                    .updateSortOrder(SortOrder.alphabetical);
                Navigator.of(dialogContext).pop();
              },
            ),
            SimpleDialogOption(
              child: Text(
                "Recently Added",
                style: TextStyle(
                  color: (currentSortOrder == SortOrder.recentlyAdded)
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
              onPressed: () {
                ref
                    .read(sortOrderNotifierProvider)
                    .updateSortOrder(SortOrder.recentlyAdded);
                Navigator.of(dialogContext).pop();
              },
            ),
            SimpleDialogOption(
              child: Text(
                "Random",
                style: TextStyle(
                  color: (currentSortOrder == SortOrder.random)
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
              onPressed: () {
                ref
                    .read(sortOrderNotifierProvider)
                    .updateSortOrder(SortOrder.random);
                Navigator.of(dialogContext).pop();
              },
            ),
          ]);
        });
  }
}
