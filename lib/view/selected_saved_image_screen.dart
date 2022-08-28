import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/entity/saved_image.dart';
import 'package:imagesearchgallery/provider/saved_images_provider.dart';
import 'package:imagesearchgallery/provider/search_provider.dart';
import 'package:imagesearchgallery/provider/selected_saved_image_provider.dart';
import 'package:imagesearchgallery/view/search_screen.dart';

class SelectedSavedImageScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSavedImage = ref.watch(selectedSavedImageProvider);
    if (selectedSavedImage == null) {
      return const Center();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(selectedSavedImage.label),
          actions: [
            IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () async {
                  final savedImageNotifier =
                      ref.read(savedImageNotifierProvider);
                  final success =
                      await savedImageNotifier.delete(selectedSavedImage);
                  if (success) {
                    Navigator.pop(context);
                    final snackBar = SnackBar(content: const Text("Deleted"),
                    action: SnackBarAction(label: "Undo", onPressed: () {
                      savedImageNotifier.undoDelete();
                      Fluttertoast.showToast(msg: "Undo!");
                    },),);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    Fluttertoast.showToast(msg: "Failed");
                  }
                }),
            IconButton(
                onPressed: () async {
                  openEditDialog(ref, context, selectedSavedImage);
                },
                icon: const Icon(Icons.edit)),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                final savedImageNotifier =
                  ref.read(savedImageNotifierProvider);
                savedImageNotifier.markImageToUpdateUrl(selectedSavedImage);
                // prepopulate search screen
                ref.read(searchStateNotifier).search(selectedSavedImage.label);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
            )
          ],
        ),
        body: CachedNetworkImage(
                placeholder: (context, url) =>
                    const CircularProgressIndicator(color: Colors.black12),
                imageUrl: selectedSavedImage.url,
                fit: BoxFit.fitWidth));
  }

  Future<void> openEditDialog(
      WidgetRef ref, BuildContext context, SavedImage image) async {
    final textFieldController = TextEditingController(text: image.label);
    return showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: const Text("Edit"),
            content: TextField(
              controller: textFieldController,
              decoration: const InputDecoration(border: InputBorder.none),
              autofocus: true,
            ),
            actions: [
              TextButton(
                  onPressed: () async {
                    final newLabel = textFieldController.value.text;
                    if (newLabel == "" || newLabel == image.label) {
                      Navigator.of(dialogContext).pop();
                      return;
                    }
                    final savedImageNotifier =
                    ref.read(savedImageNotifierProvider);
                    final success =
                    await savedImageNotifier.rename(image, newLabel);
                    if (success) {
                      Fluttertoast.showToast(msg: "Success!");
                    } else {
                      Fluttertoast.showToast(msg: "Failed");
                    }
                    Navigator.of(dialogContext).pop();
                  },
                  child: const Text('Confirm'))
            ],
          );
        });
  }
}
