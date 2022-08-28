import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/provider/saved_images_provider.dart';
import 'package:imagesearchgallery/provider/select_search_result_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:transparent_image/transparent_image.dart';

final _saveFabEnabledProvider = StateProvider((ref) => true);

class SelectedSearchResultScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSearchResult = ref.watch(selectedSearchResultProvider);
    if (selectedSearchResult is EmptySelectedSearchResult) {
      return const Center();
    }
    final textFieldController = TextEditingController(text: selectedSearchResult.searchTerm);
    final fabEnabled = ref.watch(_saveFabEnabledProvider);
    final imageToUpdate = ref.watch(imageToUpdateUrlProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Save")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: fabEnabled ? Theme.of(context).colorScheme.primary : Colors.black12,
        child: const Icon(Icons.check),
        onPressed: () async {
          if (!fabEnabled) {
            return;
          }
          ref.read(_saveFabEnabledProvider.notifier).state = false;
          var readWriteStatus = Permission.storage;
          if (await readWriteStatus.request().isGranted) {
            if (imageToUpdate != null) {
              ref.read(selectSearchResultStateNotifier).select(
                  SelectedSearchResult(
                      searchTerm: textFieldController.value.text,
                      url: selectedSearchResult.url)
              );
            }
            final success = imageToUpdate == null ?
              await ref.read(selectSearchResultStateNotifier)
                  .saveCurrentlySelectedSearchResult(
              ) : await ref.read(savedImageNotifierProvider).updateUrl(selectedSearchResult.url);

            if (success) {
              Fluttertoast.showToast(msg: "Saved");
              Navigator.of(context).popUntil((route) => route.isFirst);
            } else {
              Fluttertoast.showToast(msg: "Failed");
            }
          }
          ref.read(_saveFabEnabledProvider.notifier).state = true;
        },
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 12),
            child: TextField(
                controller: textFieldController,
              decoration: const InputDecoration(
                border: InputBorder.none
              ),
              autofocus: true,
              enabled: imageToUpdate == null,
            ),
          ),
          Hero(
            tag: "tag_${selectedSearchResult.url}",
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: selectedSearchResult.url,
              fit: BoxFit.cover,
            )
          )
        ],
      ),
    );
  }

}