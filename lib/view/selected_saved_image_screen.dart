import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/provider/selected_saved_image_provider.dart';

class SelectedSavedImageScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSavedImage = ref.watch(selectedSavedImageProvider);
    if (selectedSavedImage == null) {
      return const Center();
    }

    return Scaffold(
        appBar: AppBar(title: Text(selectedSavedImage.label)),
        body: Hero(
            tag: "tag_${selectedSavedImage.url}",
            child: CachedNetworkImage(
                placeholder: (context, url) =>
                    const CircularProgressIndicator(color: Colors.black12),
                imageUrl: selectedSavedImage.url,
                fit: BoxFit.fitWidth)));
  }
}
