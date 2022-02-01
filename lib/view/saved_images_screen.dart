import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:imagesearchgallery/provider/saved_images_provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:imagesearchgallery/view/search_screen.dart';

class SavedImagesScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedImages = ref.watch(filteredImagesProvider);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
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
                              child: InkWell(onLongPress: () {
                                showMenu(
                                    context: context,
                                    // top right
                                    position: const RelativeRect.fromLTRB(
                                        0, 0, -1, 0),
                                    items: <PopupMenuEntry>[
                                      PopupMenuItem(
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                                "Delete '${images[index].label}'")
                                          ],
                                        ),
                                        onTap: () async {
                                          final savedImageNotifier = ref
                                              .read(savedImageNotifierProvider);
                                          final success =
                                              await savedImageNotifier
                                                  .delete(images[index]);
                                          if (success) {
                                            Fluttertoast.showToast(
                                                msg: "Deleted!");
                                          } else {
                                            Fluttertoast.showToast(
                                                msg: "Failed");
                                          }
                                        },
                                      )
                                    ]);
                              })))
                    ]);
                  },
                  staggeredTileBuilder: (int index) =>
                      const StaggeredTile.fit(2),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 0,
                )));
  }
}
